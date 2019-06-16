import copy

from . import cilast as cil
from . import coolast as ast
from . import visitor
from .scope import VariableInfo
from .coolutils import default


class Cool2CilVisitor:
    def __init__(self, context):
        # Handle current program
        self.dottypes = []
        self.dotdata = []
        self.dotcode = []

        # Handle current function
        self.current_function_name = ""
        self.localvars = []
        self.instructions = []

        # Handle current class
        self.current_class_name = ""
        self.attributes = []
        self.methods = []
        self.ctor = []

        # Handle internal names
        self.internal_count = 0
        self.internal_f_count = 0
        self.internal_l_count = 0

        # Context
        self.context = context

    # ======================================================================
    # =[ UTILS ]============================================================
    # ======================================================================

    def build_internal_fname(self):
        fname = f'f{self.internal_f_count}'
        self.internal_f_count += 1
        return fname

    def build_method_name(self):
        mname = f'{self.current_class_name}_{self.current_function_name}'
        return mname

    def define_internal_lname(self):
        lname = f'{self.internal_l_count}_LABEL'
        self.internal_l_count += 1
        return lname

    def build_internal_vname(self, vname):
        vname = f'{self.internal_count}_{self.current_function_name}_{vname}'
        self.internal_count += 1
        return vname

    def define_internal_local(self):
        vinfo = VariableInfo('internal')
        return self.register_local(vinfo)

    def register_local(self, vinfo):
        vinfo.name = self.build_internal_vname(vinfo.name)
        vinfo.vmholder = len(self.localvars)
        local_node = cil.CILLocal(vinfo)
        self.localvars.append(local_node)
        return vinfo

    def register_instruction(self, instruction_type, *args):
        instruction = instruction_type(*args)
        self.instructions.append(instruction)
        return instruction

    def register_func(self, fname):
        func = cil.CILFunction(fname, self.instructions)
        self.dotcode.append(func)
        return func

    def register_type(self):
        ttype = cil.CILType(self.current_class_name, self.attributes,
                            self.methods)
        self.dottypes.append(ttype)
        return ttype

    def register_data(self, value):
        vname = f'data_{len(self.dotdata)}'
        data_node = cil.CILData(vname, value)
        self.dotdata.append(data_node)
        return data_node

    def build_ctr(self):
        # Build constructor
        ctr = []
        ctr.append(cil.CILParam("self"))
        for attr in attrs:
            attr_node = self.visit(attr)
            ctr.append(attr_node)
        ctr.append(cil.CILReturn("self"))

        self.current_function_name = "ctr"
        ctr_name = build_method_name()
        ctr_func = cil.CILFunction(ctr_name, ctr)
        self.dotcode.append(ctr_func)
        # Add constructor as the first element of the methods
        self.methods.append(ctr_func)

    def build_entry(self):
        main_name = self.define_internal_local()
        self.register_instruction(cil.CILAllocate, main_name, "Main")
        self.register_instruction(cil.CILArg, main_name)
        self.register_instruction(cil.CILCall, main_name, f'{node.new_type}_ctr')
        
        self.register_instruction(cil.CILArg, main_name)

        result = self.define_internal_local()
        self.register_instruction(cil.CILVCall, result, "Main", "Main_main")
        
        self.register_instruction(cil.CILReturn, 0)

        self.current_function_name = "entry"
        self.register_func(self.current_function_name)

    # ======================================================================

    # ======================================================================
    # =[ VISIT ]============================================================
    # ======================================================================

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        """
        Every program in cool has a `Main` class and a `main` method.
        Every program in cil should have an `entrypoint` method which is to be run to start the program.
        """

        # Maybe sort the types before visiting them?
        for klass in node.classes:
            self.visit(klass)

        # We register the entrypoint here.
        self.build_entry()

        root = cil.CILProgram(self.dottypes, self.dotdata, self.dotcode)

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        # Update current class name
        self.current_class_name = node.name

        # Clear old values
        self.attributes.clear()
        self.methods.clear()

        attrs, funcs = [], []
        for feature in node.features:
            if isinstance(feature, ast.ClassMethod):
                funcs.append(feature)
            else:
                attrs.append(feature)
        
        # Build constructor
        self.build_ctr()

        for func in funcs:
            self.visit(func)
        
        # TODO: What if we have a constructor which calls a ctor which calls the first ctor? Python gives
        # recurison depth exceeded, of course, does C# detect this at compile time?

        ttype = self.register_type()
        print(ttype)
        return ttype

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod):
        # This visit is divided in two:
        #   * The addition of the method to the current type
        #   * The addition of a new function to dotcode
        self.current_function_name = node.name
        mname = self.build_method_name()
        fname = self.build_internal_fname()

        # Method addition
        self.methods.append(cil.CILMethod(mname, fname))

        # Function addition
        # Clean instruction list
        self.instructions.clear()

        # First line of every function is *self* param
        self.register_instruction(cil.CILParam, "self")

        # For each formal parameter the function has, visit the corresponding node
        for fparam in node.formal_params:
            self.visit(fparam)

        # Method body
        vinfo = self.visit(node.body)

        # Since the body of a function is an expression,
        # we return whatever returns the body
        self.register_instruction(cil.CILReturn, vinfo)

        # Register the function in dotcode
        self.register_func(fname)

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute):
        # Check we're not cleaning and losing ctor instructions!
        self.attributes.append(node.name)  #

        if node.init_expr:
            vinfo = self.visit(node.init_expr)
        else:  # Init with default of the type
            vinfo = coolutils.default(node.attr_type)
        return cil.CILSetAttrib("self", node.name, vinfo)

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter):
        vinfo = VariableInfo(node.name)
        self.register_instruction(cil.CILParam, vinfo)
        return vinfo

    @visitor.when(ast.Object)
    def visit(self, node: ast.Object):
        return VariableInfo(node.name)

    # @Leo @Marcos
    @visitor.when(ast.Self)
    def visit(self, node: ast.Self):
        pass

    @visitor.when(ast.Integer)
    def visit(self, node: ast.Integer):
        return node.content

    @visitor.when(ast.String)
    def visit(self, node: ast.String):
        data_vinfo = self.register_data(node.content)
        return data_vinfo

    @visitor.when(ast.Boolean)
    def visit(self, node: ast.Boolean):
        return 1 if node.content == True else 0

    @visitor.when(ast.NewObject)
    def visit(self, node: ast.NewObject):
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILAllocate, vinfo, node.new_type)
        self.register_instruction(cil.CILArg, "self")
        self.register_instruction(cil.CILCall, vinfo, f'{node.new_type}_ctr')
        return vinfo

    # TODO: Check this!
    @visitor.when(ast.IsVoid)
    def visit(self, node: ast.IsVoid):
        dest_vinfo = self.define_internal_local()
		vinfo = self.visit(node.expr)
		self.register_instruction(cil.CILTypeOf, ttype, vinfo)
		self.register_instruction(cil.CILEqual, dest_vinfo, ttype, "void")
        return dest_vinfo

    @visitor.when(ast.Assignment)
    def visit(self, node: ast.Assignment):
        """
        There are three ways of making an assignment.
            i. By declaring an attribute.
            ii. By declaring inside a let.
            iii. Just making an assigning a value.
        
        The first two share the syntax, but the third doesn't.
        In this node we don't have to generate a LOCAL CIL node,
        because to make this kind of assignment(iii) the identifier
        should be declared from beforehand.
        """
        source = self.visit(node.expr)
        self.register_instruction(cil.CILAssign, node.identifier, source)
        return node.identifier

    @visitor.when(ast.Block)
    def visit(self, node: ast.Block):
        vinfo = 0
        for expr in node.expr_list:
            vinfo = self.visit(expr)
        return vinfo

    @visitor.when(ast.DynamicDispatch)
    def visit(self, node: ast.DynamicDispatch):
        instance = self.visit(
            node.instance)  # This is going to be param `self`
        self.register_instruction(cil.CILArg, instance)

        args = []  # Remaining arguments of the method
        for arg in node.arguments:
            vinfo = self.visit(arg)
            self.register_instruction(cil.CILArg, vinfo)

        # Here we have to compute the type, which is done using TYPEOF
        ttype = self.define_internal_local()
        self.register_instruction(cil.CILTypeOf, ttype, instance)

        # All function calls have a result
        result = self.define_internal_local()
        self.register_instruction(cil.CILVCall, result, ttype, node.method)

        return result

    @visitor.when(ast.StaticDispatch)
    def visit(self, node: ast.StaticDispatch):
        instance = self.visit(
            node.instance)  # This is going to be param `self`
        self.register_instruction(cil.CILArg, instance)

        args = []  # Remaining arguments of the method
        for arg in node.arguments:
            vinfo = self.visit(arg)
            self.register_instruction(cil.CILArg, vinfo)

        # All function calls have a result
        result = self.define_internal_local()
        self.register_instruction(cil.CILVCall, result, node.dispatch_type,
                                  node.method)

        return result

    @visitor.when(ast.Let)
    def visit(self, node: ast.Let):
        """
        <let.locals>

        ...
        <let.body>
        """
        for declaration in node.declaration_list:
            self.visit(declaration)

        let_value = self.define_internal_local()
        vinfo = self.visit(node.body)
        self.register_instruction(cil.CILAssign, let_value, vinfo)
        return let_value

    @visitor.when(ast.Declaration)
    def visit(self, node: ast.Declaration):
        """
        LOCAL identifier
        <expression.locals>

        identifier = <expression.body>
        """
        identifier = self.register_local(node.identifier)
        vinfo = self.visit(node.expression) if node.expression else default(
            node.ttype)
        self.register_instruction(cil.CILAssign, identifier, vinfo)
        return identifier

    @visitor.when(ast.If)
    def visit(self, node: ast.If):
        """
        LOCAL predicate_vinfo;
        LOCAL if_result;

        predicate_vinfo = <node.predicate>;
        if predicate_vinfo GOTO then_label;
        if_result = <node.else_body>;
        GOTO continue_label;
        LABEL then_label;
        if_result = <node.then_body>;
        LABEL continue_label;
        """
        then_label = self.define_internal_lname()
        continue_label = self.define_internal_lname()

        predicate_vinfo = self.visit(node.predicate)
        self.register_instruction(cil.CILGotoIf, predicate_vinfo, then_label)
        self.visit(node.else_body)
        self.register_instruction(cil.CILGoto, continue_label)
        self.register_instruction(cil.CILLabel, then_label)
        self.visit(node.then_body)
        self.register_instruction(cil.CILLabel, continue_label)

    # TODO: How do I return void??????? My head is spinning! Is it just a 0?
    # TODO: I can optimize this code! Nevermind, the line I can save is spent somewhere else :(.
    @visitor.when(ast.WhileLoop)
    def visit(self, node: ast.WhileLoop):
        """
        LOCAL predicate_vinfo;

        LABEL while_label
        predicate_vinfo = <node.predicate>;
        if predicate_vinfo GOTO loop_label;
        GOTO pool_label;
        LABEL loop_label;
        <node.body>;
        GOTO while_label;
        LABEL pool_label;
        TODO: return void here!
        """
        while_label = self.define_internal_lname()
        loop_label = self.define_internal_lname()
        pool_label = self.define_internal_lname()

        self.register_instruction(cil.CILLabel, while_label)
        predicate_vinfo = self.visit(node.predicate)
        self.register_instruction(cil.CILGotoIf, predicate_vinfo, loop_label)
        self.register_instruction(cil.CILGoto, pool_label)
        self.register_instruction(cil.CILLabel, loop_label)
        self.visit(node.body)
        self.register_instruction(cil.CILGoto, while_label)
        self.register_instruction(cil.CILLabel, pool_label)
        return 0  # void?????

    @visitor.when(ast.Case)
    def visit(self, node: ast.Case):
        pass

    @visitor.when(ast.Action)
    def visit(self, node: ast.Action):
        pass

    @visitor.when(ast.IntegerComplement)
    def visit(self, node: ast.IntegerComplement):
        vinfo = self.visit(node.expr)
        dest = self.define_internal_local()
        self.register_instruction(cil.CILMinus, dest, 0, vinfo)
        return dest

    @visitor.when(ast.BooleanComplement)
    def visit(self, node: ast.BooleanComplement):
        vinfo = self.visit(node.expr)
        dest = self.define_internal_local()
        self.register_instruction(cil.CILMinus, dest, 1, vinfo)
        return dest

    @visitor.when(ast.Addition)
    def visit(self, node: ast.Addition):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILPlus, dest_vinfo, left_vinfo,
                                  right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Subtraction)
    def visit(self, node: ast.Subtraction):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILMinus, dest_vinfo, left_vinfo,
                                  right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Multiplication)
    def visit(self, node: ast.Multiplication):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILStar, dest_vinfo, left_vinfo,
                                  right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Division)
    def visit(self, node: ast.Division):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILDiv, dest_vinfo, left_vinfo,
                                  right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Equal)
    def visit(self, node: ast.Equal):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILEqual, vinfo, first_vinfo,
                                  second_vinfo)
        return vinfo

    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILLessThan, vinfo, first_vinfo,
                                  second_vinfo)
        return vinfo

    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILLessThanOrEqual, vinfo, first_vinfo,
                                  second_vinfo)
        return vinfo

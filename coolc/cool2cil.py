import copy

from . import cilast as cil
from . import coolast as ast
from . import visitor
from .scope import VariableInfo
from .coolutils import default
from functools import partial


class Cool2CilVisitor:
    def __init__(self):
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

    def register_func(self, fname, instructions):
        func = cil.CILFunction(fname, instructions)
        self.dotcode.append(func)
        return func

    def register_type(self):
        ttype = cil.CILType(self.current_class_name, self.attributes, self.methods)
        self.dottypes.append(ttype)
        return ttype

    def register_data(self, value):
        vname = f'data_{len(self.dotdata)}'
        data_node = cil.CILData(vname, value)
        self.dotdata.append(data_node)
        return data_node

    def get_type(self, name):
        included = filter(lambda x: x.name == name, self.dottypes)
        if included:
            return list(included)[0]
        return None

    def call_ctor(self, ctor, instance):
        # This updates all the SETATTR instructions of the ctor with the allocated instance,
        # registers them in the instructions of the current method.
        replicated = copy.deepcopy(ctor)

        # Update instructions
        for instruction in replicated:
            if type(instruction) is cil.CILSetAttrib:
                instruction.instance = instance
        
        # Register instructions after the ALLOCATE
        self.instructions.extend(replicated)
        return replicated


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

        for klass in node.classes:
            self.visit(klass)

        root = cil.CILProgram(self.dottypes, self.dotdata, self.dotcode)

        # self.current_function_name = 'main'

        # vinfo = self.visit(node.expr)
        # # return_node = self.register_instruction(cil.CILReturn, vinfo)
        # self.register_instruction(cil.CILReturn, vinfo)

        # dotcode = cil.CILFunction(self.current_function_name, [], self.localvars, self.instructions)

        # root = cil.CILProgram([], self.dotdata, [dotcode])
        # return root

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        # Update current class name
        self.current_class_name = node.name

        # Clear old values
        self.attributes.clear()
        self.methods.clear()
        self.ctor.clear()

        # The only arg to the ctor should be an instance of this type 
        # (The address where the instance is stored).
        # I think this is always the result of an ALLOCATE!
        # So, actually, we don't need to write a PARAM-ARG duo.
        # We just paste all the code from the constructor where its called!
        # self.ctor

        # If this class inherits we have to update its attributes, methods and ctor: CIL types have them all.
        if node.parent:
            # TODO: Optimize this! Maybe use a dict?
            for ttype in self.dottypes:
                if ttype.name == node.parent:
                    self.attributes.extend(ttype.attributes)
                    self.methods.extend(ttype.methods[1:])

                    self.ctor.extend(self.methods[0].instructions)  # this is the parent's constructor

        self.visit(node.features)

        self.methods.insert(0, self.ctor)  # Add constructors as the first element of the methods
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
        self.register_instruction(cil.CILParam, VariableInfo('self'))

        # For each formal parameter the function has, visit the corresponding node
        for fparam in node.formal_params:
            self.visit(fparam)

        # Method body
        vinfo = self.visit(node.body)

        # Since the body of a function is an expression, 
        # we return whatever returns the body
        self.register_instruction(cil.CILReturn, vinfo)

        # Register the function in dotcode
        self.register_func(fname, self.instructions)

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute):
        """
        This is handled in the constructors visitor
        """
        pass
        # # Check we're not cleaning and losing ctor instructions!
        # self.instructions.clear()  # Clean current CIL instructions
        # self.current_function_name = "0_ctor"  # Attributes init is done in a ctor, the weird name is to avoid collisions 
        # self.attributes.append(node.name)  # 

        # if node.init_expr:
        #     vinfo = self.visit(node.init_expr)
        #     # Here should go using SETATTR to set the vinfo as the instance's attribute
        #     self.register_instruction(cil.CILSetAttrib, "", node.name, vinfo)  # The instance is not known at this point
        #     # So we have to make a call after the ALLOCATE to set the instance here, that's why the ctor receives
        #     # the instance as an argument.

        #     self.ctor.extend(self.instructions)  # I gues we're not losing instructions cause we save them with this!
        # else:  # Init with default of the type
        #     # We should do something with defaults!
        #     # TODO: Add default init of node.attr_type here!
        #     pass

        # # Not sure what to do with this. How to store the value of the attr in its address?
        # # I think it should be something like this: Upon `new T`, we alloc a memory address,
        # # search for the constructor address and then it sets the attributes like an array.
        # # return_node = self.register_instruction(cil.CILReturn(vinfo))  # I think we don't need this
        # # self.ctor.append()  # Nor this

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter):
        vinfo = VariableInfo(node.name)
        self.register_instruction(cil.CILParam, vinfo)
        return vinfo

    @visitor.when(ast.Object)
    def visit(self, node: ast.Object):
        pass

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
        self.register_instruction(cil.CILAllocate, vinfo, node.type)
        
        # TODO: Make sure ALLOCATEs execute in order, i.e. when we run `new T`, the constructor of T
        # is already discovered!
        # UPDATE: we build constructors in a visitor pass right before this visitor :).
        ttype = self.get_type(node.type)
        ctor = ttype.methods[0] if ttype else None

        self.call_ctor(ctor, vinfo)

        return vinfo

    # TODO: Check this!
    @visitor.when(ast.IsVoid)
    def visit(self, node: ast.IsVoid):
        vinfo = self.visit(node.expr)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILTypeOf, dest_vinfo, vinfo)
        return dest_vinfo

    @visitor.when(ast.Assignment)
    def visit(self, node: ast.Assignment):
        """
        There are three ways of making an assignment.
            1. By declaring an attribute.
            2. By declaring inside a let.
            3. Just making an assigning a value.
        
        The first two share the syntax, but the third doesn't.
        In this node we don't have to generate a LOCAL CIL node,
        because to make this kind of assignment(3) the identifier
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
        pass

    @visitor.when(ast.StaticDispatch)
    def visit(self, node: ast.StaticDispatch):
        instance = self.visit(node.instance)  # This is going to be param `self`
        self.register_instruction(cil.CILArg, instance)

        args = []  # Remaining arguments of the method
        for arg in node.arguments:
            vinfo = self.visit(arg)
            self.register_instruction(cil.CILArg, vinfo)

        # All function calls have a result
        result = self.define_internal_local()
        self.register_instruction(cil.CILVCall, result, node.dispatch_type, node.method)
        
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
        vinfo = self.visit(node.expression) if node.expression else default(node.ttype)
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
        self.register_instruction(cil.CILPlus, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Subtraction)
    def visit(self, node: ast.Subtraction):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILMinus, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Multiplication)
    def visit(self, node: ast.Multiplication):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILStar, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Division)
    def visit(self, node: ast.Division):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILDiv, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Equal)
    def visit(self, node: ast.Equal):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILEqual, vinfo, first_vinfo, second_vinfo)
        return vinfo

    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILLessThan, vinfo, first_vinfo, second_vinfo)
        return vinfo

    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILLessThanOrEqual, vinfo, first_vinfo, second_vinfo)
        return vinfo

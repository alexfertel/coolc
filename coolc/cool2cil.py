from . import cilast as cil
from . import coolast as ast
from . import visitor
from .scope import VariableInfo


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

    # def build_internal_fname(self):
    #     fname = f'f{self.internal_f_count}'
    #     self.internal_f_count += 1
    #     return fname

    # def build_internal_fname(self):
    #     fname = f'f{self.internal_f_count}'
    #     self.internal_f_count += 1
    #     return fname

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

    # def register_func(self, instructions):
    #     func = func(*args)
    #     self.dotcode.append(func)
    #     return func

    def register_type(self):
        ttype = cil.CILType(self.current_class_name, self.attributes, self.methods)
        self.dottypes.append(ttype)
        return ttype

    def register_data(self, value):
        vname = f'data_{len(self.dotdata)}'
        data_node = cil.CILData(vname, value)
        self.dotdata.append(data_node)
        return data_node

    def generate_ctor(self, attributes):
        return 0

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

        # Empty old values
        self.attributes.clear()
        self.methods.clear()
        self.ctor.clear()

        # If this class inherits we have to update its attributes, methods and ctor: CIL types have them all.
        if node.parent:
            # TODO: Optimize this! Maybe use a dict?
            for ttype in self.dottypes:
                if ttype.name == node.parent:
                    attributes.extend(ttype.attributes)
                    methods.extend(ttype.methods[1:])

                    self.ctor.extend(methods[0].instructions)  # this is the parent's constructor

        self.visit(node.features)

        self.methods.insert(0, ctor)  # Add constructors

        ttype = self.register_type()
        print(ttype)
        return ttype

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod):
        
        

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute):
        pass

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter):
        pass

    @visitor.when(ast.Object)
    def visit(self, node: ast.Object):
        pass

    @visitor.when(ast.Self)
    def visit(self, node: ast.Self):
        pass

    @visitor.when(ast.Integer)
    def visit(self, node: ast.Integer):
        # return int(node.content)
        return node.content

    @visitor.when(ast.String)
    def visit(self, node: ast.String):
        # return str(node.content)
        return node.content

    @visitor.when(ast.Boolean)
    def visit(self, node: ast.Boolean):
        return node.content

    @visitor.when(ast.NewObject)
    def visit(self, node: ast.NewObject):
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILAllocate, vinfo, node.type)
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
        source = self.visit(node.expr)
        self.register_instruction(cil.CILAssign, node.instance.variable_info, source)
        return node.instance.variable_info

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
        pass

    @visitor.when(ast.Let)
    def visit(self, node: ast.Let):
        for declaration in node.declaration_list:
            self.visit(declaration)
        # vinfo = self.visit(node.expr)
        # internal = self.define_internal_local()
        # vinfo = self.register_instruction(cil.CILAssign, internal, vinfo)
        return self.visit(node.expr)

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
        self.register_instruction(cil.CILMinus, vinfo, first_vinfo, second_vinfo)
        return vinfo

    # TODO: I can't tell if this needs more logic than Equals!
    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILMinus, vinfo, first_vinfo, second_vinfo)
        return vinfo

    # TODO: I can't tell if this needs more logic than Equals!
    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual):
        first_vinfo = self.visit(node.first)
        second_vinfo = self.visit(node.second)
        vinfo = self.define_internal_local()
        self.register_instruction(cil.CILMinus, vinfo, first_vinfo, second_vinfo)
        return vinfo

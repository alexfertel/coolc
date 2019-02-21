import coolast as ast
import cilast as cil
import visitor


class Cool2CilVisitor:
    def __init__(self):
        self.dotdata = []
        self.current_function_name = ""
        self.current_class_name = ""
        self.localvars = []
        self.instructions = []
        self.internal_count = 0
        self.internal_f_count = 0

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
        local_node = cil.CILLocalNode(vinfo)
        self.localvars.append(local_node)
        return vinfo

    def register_instruction(self, instruction_type, *args):
        instruction = instruction_type(*args)
        self.instructions.append(instruction)
        return instruction

    def register_data(self, value):
        vname = f'data_{len(self.dotdata)}'
        data_node = cil.CILDataNode(vname, value)
        self.dotdata.append(data_node)
        return data_node

    # ======================================================================

    # ======================================================================
    # =[ VISIT ]============================================================
    # ======================================================================

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        self.current_function_name = 'main'

        vinfo = self.visit(node.expr)
        # return_node = self.register_instruction(cil.CILReturnNode, vinfo)
        self.register_instruction(cil.CILReturnNode, vinfo)

        dotcode = cil.CILFunctionNode(self.current_function_name, [], self.localvars, self.instructions)

        root = cil.CILProgramNode([], self.dotdata, [dotcode])
        return root

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        pass

    @visitor.when(ast.ClassFeature)
    def visit(self, node: ast.ClassFeature):
        pass

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod):
        pass

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

    @visitor.when(ast.IsVoid)
    def visit(self, node: ast.IsVoid):
        vinfo = self.visit(node.expr)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILTypeOf, dest_vinfo, vinfo)
        return dest_vinfo

    @visitor.when(ast.Assignment)
    def visit(self, node: ast.Assignment):
        pass

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
        # vinfo = self.register_instruction(cil.CILAssignNode, internal, vinfo)
        return self.visit(node.expr)

    @visitor.when(ast.If)
    def visit(self, node: ast.If):
        pass

    @visitor.when(ast.WhileLoop)
    def visit(self, node: ast.WhileLoop):
        pass

    @visitor.when(ast.Case)
    def visit(self, node: ast.Case):
        pass

    @visitor.when(ast.Action)
    def visit(self, node: ast.Action):
        pass

    @visitor.when(ast.UnaryOperation)
    def visit(self, node: ast.UnaryOperation):
        pass

    @visitor.when(ast.IntegerComplement)
    def visit(self, node: ast.IntegerComplement):
        vinfo = self.visit(node.expr)
        dest = self.define_internal_local()
        self.register_instruction(cil.CILMinusNode, dest, 0, vinfo)
        return dest

    @visitor.when(ast.BooleanComplement)
    def visit(self, node: ast.BooleanComplement):
        pass

    @visitor.when(ast.BinaryOperation)
    def visit(self, node: ast.BinaryOperation):
        pass

    @visitor.when(ast.Addition)
    def visit(self, node: ast.Addition):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILPlusNode, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Subtraction)
    def visit(self, node: ast.Subtraction):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILPlusNode, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Multiplication)
    def visit(self, node: ast.Multiplication):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILPlusNode, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Division)
    def visit(self, node: ast.Division):
        left_vinfo = self.visit(node.left)
        right_vinfo = self.visit(node.right)
        dest_vinfo = self.define_internal_local()
        self.register_instruction(cil.CILPlusNode, dest_vinfo, left_vinfo, right_vinfo)
        return dest_vinfo

    @visitor.when(ast.Equal)
    def visit(self, node: ast.Equal):
        pass

    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan):
        pass

    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual):
        pass

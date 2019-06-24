from . import cilast as ast
from . import visitor

class CILWriterVisitor(object):
    def __init__(self, context):
        self.output = []
        self.context = context

    def emit(self, msg):
        self.output.append(msg)

    def black(self):
        self.output.append('')

    def get_value(self, value):
        return value if isinstance(value, int) else value.name

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.CILProgram)
    def visit(self, node:  ast.CILProgram):
        self.emit('.TYPES')
        for x in node.dottypes:
            # print(x.name)
            self.visit(x)
        self.black()

        self.emit('.DATA')
        for x in node.dotdata:
            self.visit(x)
        self.black()

        self.emit('.CODE')
        for x in node.dotcode:
            self.visit(x)


    @visitor.when(ast.CILType)
    def visit(self, node: ast.CILType):
        self.black()

        self.emit(f'type {node.name} {{')
        for method in node.methods:
            # print(method.mname)
            self.visit(method)
        # self.black()

        self.emit('}')

    @visitor.when(ast.CILMethod)
    def visit(self, node: ast.CILMethod):
        self.emit(f'    {node.mname}: {self.context.mmap[node.mname]}')

    @visitor.when(ast.CILData)
    def visit(self, node: ast.CILData):
        self.emit(f'{node.vname} = {repr(node.value)}')

    @visitor.when(ast.CILFunction)
    def visit(self, node: ast.CILFunction):
        self.black()

        self.emit(f'function {node.fname} {{')

        for local in node.localvars:
            self.visit(local)

        for x in node.instructions:
            self.visit(x)
        self.emit('}')

    @visitor.when(ast.CILParam)
    def visit(self, node: ast.CILParam):
        self.emit(f'    PARAM {node.vinfo.name}')

    @visitor.when(ast.CILLocal)
    def visit(self, node: ast.CILLocal):
        self.emit(f'    LOCAL {node.vinfo.name}')

    @visitor.when(ast.CILAssign)
    def visit(self, node: ast.CILAssign):
        dest = node.dest
        source = self.get_value(node.source)
        self.emit(f'    {dest.name} = {source}')

    @visitor.when(ast.CILPlus)
    def visit(self, node: ast.CILPlus):
        dest = node.dest.name
        left = self.get_value(node.left)
        right = self.get_value(node.right)
        self.emit(f'    {dest} = {left} + {right}')

    @visitor.when(ast.CILMinus)
    def visit(self, node: ast.CILMinus):
        dest = node.dest.name
        left = self.get_value(node.left)
        right = self.get_value(node.right)
        self.emit(f'    {dest} = {left} - {right}')

    @visitor.when(ast.CILStar)
    def visit(self, node: ast.CILStar):
        dest = node.dest.name
        left = self.get_value(node.left)
        right = self.get_value(node.right)
        self.emit(f'    {dest} = {left} * {right}')

    @visitor.when(ast.CILDiv)
    def visit(self, node: ast.CILDiv):
        dest = node.dest.name
        left = self.get_value(node.left)
        right = self.get_value(node.right)
        self.emit(f'    {dest} = {left} / {right}')

    @visitor.when(ast.CILGetAttrib)
    def visit(self, node: ast.CILGetAttrib):
        # inst = self.visit(node.instance)
        # attr = self.visit(node.attribute)
        self.emit(f'    {node.dest.name} = GETATTR {node.instance.name} {node.attribute}')

    @visitor.when(ast.CILSetAttrib)
    def visit(self, node: ast.CILSetAttrib):
        # inst = self.visit(node.instance)
        # attr = self.visit(node.attribute)
        # src = self.visit(node.src)
        # print(node.instance)
        self.emit(f'    SETATTR {node.instance.name} {"content" if 0 else node.attribute} {node.src}')

    @visitor.when(ast.CILAllocate)
    def visit(self, node: ast.CILAllocate):
        self.emit(f'    {node.dest.name} = ALLOCATE {node.ttype}')

    @visitor.when(ast.CILTypeOf)
    def visit(self, node: ast.CILTypeOf):
        self.emit(f'    {node.dest.name} = TYPEOF {node.var.name}')

    @visitor.when(ast.CILLabel)
    def visit(self, node: ast.CILLabel):
        self.emit(f'    LABEL {node.name}')

    @visitor.when(ast.CILGoto)
    def visit(self, node: ast.CILGoto):
        self.emit(f'    GOTO {node.name}')

    @visitor.when(ast.CILGotoIf)
    def visit(self, node: ast.CILGotoIf):
        cond = self.visit(node.condition)
        self.emit(f'    IF {cond} GOTO {node.label}')

    @visitor.when(ast.CILCall)
    def visit(self, node: ast.CILCall):
        self.emit(f'    {node.dest.name} = CALL {node.func}')

    @visitor.when(ast.CILVCall)
    def visit(self, node: ast.CILVCall):
        self.emit(f'    {node.dest.name} = VCALL {node.func}')

    @visitor.when(ast.CILArg)
    def visit(self, node: ast.CILArg):
        self.emit(f'    ARG {node.vinfo.name}')

    @visitor.when(ast.CILReturn)
    def visit(self, node: ast.CILReturn):
        print(node)
        value = self.get_value(node.value)
        value = "" if value is None else str(value)
        self.emit(f'    RETURN {value}')

    # @visitor.when(ast.CILLoad)
    # def visit(self, node: ast.CILLoad):
    #     dest = node.dest.name
    #     self.emit(f'    {dest} = LOAD {node.msg.vname}')

    @visitor.when(ast.CILDummy)
    def visit(self, node: ast.CILDummy):
        self.emit(f'    DIRECT {node.value}')


    # @visitor.when(ast.CILLength)
    # def visit(self, node: ast.CILLength):
    #     pass

    # @visitor.when(ast.CILConcat)
    # def visit(self, node: ast.CILConcat):
    #     pass

    # @visitor.when(ast.CILPrefix)
    # def visit(self, node: ast.CILPrefix):
    #     pass

    # @visitor.when(ast.CILSubstring)
    # def visit(self, node: ast.CILSubstring):
    #     pass

    # @visitor.when(ast.CILToStr)
    # def visit(self, node: ast.CILToStr):
    #     dest = node.dest.name
    #     ivalue = self.get_value(node.ivalue)
    #     self.emit(f'    {dest} = STR {ivalue}')

    # @visitor.when(ast.CILRead)
    # def visit(self, node: ast.CILRead):
    #     dest = node.dest.name
    #     self.emit(f'    {dest} = READ')

    # @visitor.when(ast.CILPrint)
    # def visit(self, node: ast.CILPrint):
    #     self.emit(f'    PRINT {node.str_addr.name}')

class CILNode:
    pass


class CILProgram(CILNode):
    def __init__(self, dottypes, dotdata, dotcode):
        self.dottypes = dottypes
        self.dotdata = dotdata
        self.dotcode = dotcode


class CILType(CILNode):
    def __init__(self, name, attributes, methods):
        self.name = name
        self.attributes = attributes
        self.methods = methods


class CILData(CILNode):
    def __init__(self, vname, value):
        self.vname = vname
        self.value = value


class CILFunction(CILNode):
    def __init__(self, fname, params, localvars, instructions):
        self.fname = fname
        self.params = params
        self.localvars = localvars
        self.instructions = instructions


class CILParam(CILNode):
    def __init__(self, vinfo):
        self.vinfo = vinfo


class CILLocal(CILNode):
    def __init__(self, vinfo):
        self.vinfo = vinfo


class CILInstruction(CILNode):
    pass


class CILAssign(CILInstruction):
    def __init__(self, dest, source):
        self.dest = dest
        self.source = source


class CILArithmetic(CILInstruction):
    def __init__(self, dest, left, right):
        self.dest = dest
        self.left = left
        self.right = right


class CILPlus(CILArithmetic):
    pass


class CILMinus(CILArithmetic):
    pass


class CILStar(CILArithmetic):
    pass


class CILDiv(CILArithmetic):
    pass


class CILGetAttrib(CILInstruction):
    def __init__(self, dest, instance, attribute):
        self.dest = dest
        self.instance = instance
        self.attribute = attribute


class CILSetAttrib(CILInstruction):
    def __init__(self, instance, attribute, src):
        self.instance = instance
        self.attribute = attribute
        self.src = src


class CILGetIndex(CILGetAttrib):
    pass


class CILSetIndex(CILSetAttrib):
    pass


class CILAllocate(CILInstruction):
    def __init__(self, dest, ttype):
        self.dest = dest
        self.ttype = ttype


class CILArray(CILInstruction):
    def __init__(self, dest, src):
        self.dest = dest
        self.src = src


class CILTypeOf(CILInstruction):
    def __init__(self, dest, var):
        self.dest = dest
        self.var = var


class CILLabel(CILInstruction):
    def __init__(self, name):
        self.name = name


class CILGoto(CILInstruction):
    def __init__(self, name):
        self.name = name


class CILGotoIf(CILInstruction):
    def __init__(self, condition, label):
        self.condition = condition
        self.label = label


class CILStaticCall(CILInstruction):
    def __init__(self, dest, func):
        self.dest = dest
        self.func = func


class CILDinamicCall(CILInstruction):
    def __init__(self, dest, ttype, func):
        self.dest = dest
        self.ttype = ttype
        self.func = func


class CILArg(CILInstruction):
    def __init__(self, vinfo):
        self.vinfo = vinfo


class CILReturn(CILInstruction):
    def __init__(self, value=None):
        self.value = value


class CILLoad(CILInstruction):
    def __init__(self, dest, msg):
        self.dest = dest
        self.msg = msg


class CILLength(CILInstruction):
    def __init__(self, dest, str_addr):
        self.dest = dest
        self.str_addr = str_addr


class CILConcat(CILInstruction):
    def __init__(self, dest, head, tail):
        self.dest = dest
        self.head = head
        self.tail = tail


class CILPrefix(CILInstruction):
    def __init__(self, dest, str_addr, pos):
        self.dest = dest
        self.str_addr = str_addr
        self.pos = pos


class CILSubstring(CILInstruction):
    def __init__(self, dest, str_addr, pos):
        self.dest = dest
        self.str_addr = str_addr
        self.pos = pos


class CILToStr(CILInstruction):
    def __init__(self, dest, ivalue):
        self.dest = dest
        self.ivalue = ivalue


class CILRead(CILInstruction):
    def __init__(self, dest):
        self.dest = dest


class CILPrint(CILInstruction):
    def __init__(self, str_addr):
        self.str_addr = str_addr

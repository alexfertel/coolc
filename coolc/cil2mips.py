from . import cilast as ast
from . import visitor
from .mipsutils import datatype, op, reg


class Cil2MipsVisitor:
    def __init__(self, context):
        self.dotdata = []
        self.dotcode = []
        self.context = context

    # ======================================================================
    # =[ UTILS ]============================================================
    # ======================================================================
    
    def init_str_funcs(self):
        self.init_str_length()
        self.init_str_concat()
        self.init_str_prefix()
        self.init_str_substr()

    def init_str_concat(self):
        self.emit_label('str_concat_func')
        self.emit_instruction(op.lw, reg.t0, self.off_reg(2, reg.sp))
        self.emit_instruction(op.lw, reg.t1, self.off_reg(3, reg.sp))
        self.push(reg.t0)
        self.emit_instruction(op.jal, 'str_length_func')
        self.emit_instruction(op.move, reg.t2, reg.a0)
        self.push(reg.t1)
        self.emit_instruction(op.jal, 'str_length_func')

        self.emit_instruction(op.move, reg.t3, reg.a0)
        self.emit_instruction(op.add, reg.a0, reg.t2, reg.t3)
        self.emit_instruction(op.addiu, reg.a0, reg.a0, 1)
        self.emit_instruction(op.li, reg.v0, 9)
        self.emit_instruction(op.syscall)

        self.emit_label('str_concat_fst_loop')
        self.emit_instruction(op.lb, reg.t6, self.off_reg(0, reg.t0))
        self.emit_instruction(op.beqz, reg.t6, 'str_concat_fst_loop_end')
        self.emit_instruction(op.lb, reg.v0, self.off_reg(0, reg.t0))
        self.emit_instruction(op.addiu, reg.v0, reg.v0, 1)
        self.emit_instruction(op.addiu, reg.t0, reg.t0, 1)
        self.emit_instruction(op.j, 'str_concat_fst_loop')
        self.emit_label('str_concat_fst_loop_end')

        self.emit_label('str_concat_snd_loop')
        self.emit_instruction(op.lb, reg.t6, self.off_reg(0, reg.t1))
        self.emit_instruction(op.beqz, reg.t6, 'str_concat_snd_loop_end')
        self.emit_instruction(op.lb, reg.v0, self.off_reg(0, reg.t1))
        self.emit_instruction(op.addiu, reg.v0, reg.v0, 1)
        self.emit_instruction(op.addiu, reg.t1, reg.t1, 1)
        self.emit_instruction(op.j, 'str_concat_snd_loop')
        self.emit_label('str_concat_snd_loop_end')

        self.emit_instruction(op.lb, reg.v0, reg.zero)
        self.emit_instruction(op.move, reg.a0, reg.v0)

        self.emit_instruction(op.jr, reg.ra)

    #TODO
    def init_str_prefix(self):
        pass

    #TODO
    def init_str_substr(self):
        pass

    def init_str_length(self):
        self.emit_label('str_length_func')
        self.emit_instruction(op.lw, reg.a0, self.off_reg(1, reg.sp))
        self.emit_instruction(op.li, reg.a1, 0)
        self.emit_label('length_main_loop')
        self.emit_instruction(op.lb, reg.t1, self.off_reg(0, reg.a0))
        self.emit_instruction(op.beqz, reg.t1, 'legth_end')
        self.emit_instruction(op.addiu, reg.a0, reg.a0, 1)
        self.emit_instruction(op.addiu, reg.a1, reg.a1, 1)
        self.emit_instruction(op.j, 'length_main_loop')
        self.emit_label('length_end')
        self.emit_instruction(op.move, reg.a0, reg.a1)
        self.emit_instruction(op.jr, reg.ra)


    def init_obj_funcs(self):
        self.init_obj_abort()
        self.init_obj_typename()
        self.init_obj_copy()

    def init_obj_abort(self):
        self.emit_label('obj_abort_func')
        self.emit_instruction(op.li, reg.v0, 10)
        self.emit_instruction(op.syscall)

    def init_obj_typename(self):
        self.emit_instruction(op.sub, reg.sp, reg.sp, 12)
        self.emit_instruction(op.sw, reg.ra, self.off_reg(2, reg.sp))
        self.emit_instruction(op.li, reg.t0, 0)
        self.emit_instruction(op.sw, reg.t0, self.off_reg(0, reg.sp))
        self.emit_instruction(op.lw, reg.t0, self.off_reg(1, reg.sp))
        self.emit_instruction(op.lw, reg.t0, self.off_reg(0, reg.t0))
        self.emit_instruction(op.sw, reg.t0, self.off_reg(0, reg.sp))
        self.emit_instruction(op.lw, reg.ra, self.off_reg(2, reg.sp))
        self.emit_instruction(op.lw, reg.a0, self.off_reg(0, reg.sp))
        self.emit_instruction(op.addi, reg.sp, reg.sp, 12)
        self.emit_instruction(op.jr, reg.ra)

    #TODO
    def init_obj_copy(self):
        pass


    def init_io_funcs(self):
        self.init_io_in_int()
        self.init_io_in_str()
        self.init_io_out_int()
        self.init_io_out_str()

    def init_io_in_int(self):
        self.emit_label('io_in_int_func')
        self.emit_instruction(op.li, reg.v0, 5)
        self.emit_instruction(op.syscall)
        self.emit_instruction(op.move, reg.a0, reg.v0)
        self.emit_instruction(op.jr, reg.ra)

    def init_io_in_str(self):
        self.emit_label('io_in_str_func')
        self.emit_instruction(op.li, reg.a1, 1024)
        self.emit_instruction(op.li, reg.v0, 8)
        self.emit_instruction(op.syscall)
        self.emit_instruction(op.jr, reg.ra)

    def init_io_out_int(self):
        self.emit_label('io_out_int_func')
        self.emit_instruction(op.lw, reg.a0, self.off_reg(1, reg.sp))
        self.emit_instruction(op.li, reg.v0, 1)
        self.emit_instruction(op.syscall)
        self.emit_instruction(op.jr, reg.ra)

    def init_io_out_str(self):
        self.emit_label('io_out_str_func')
        self.emit_instruction(op.lw, reg.a0, self.off_reg(1, reg.sp))
        self.emit_instruction(op.li, reg.v0, 4)
        self.emit_instruction(op.syscall)
        self.emit_instruction(op.jr, reg.ra)


    def init_def_obj_func(self):
        self.init_obj_funcs()
        self.init_io_funcs()
        self.init_str_funcs()

    def init_utils(self):
        self.dotdata.append('.data')
        self.dotcode.append('.text')
        self.init_def_obj_func()

    def pusha(self, excep = []):
        dic = reg.__dict__
        for key in dic.keys():
            if not str(key).startswith('_') and not excep.__contains__(key):
                self.push(dic[key])

    def popa(self, excep = []):
        dic = reg.__dict__
        keys = list(dic.keys())
        keys = list(reversed(keys))
        for key in keys:
            if not str(key).startswith('_') and not excep.__contains__(key):
                self.pop(dic[key])

    def emit_data_rec(self, type, data, label = None):
        datas = ', '.join(map(lambda x: str(x), data))
        to_emit = f'{type} {datas}'
        if label:
            to_emit = label + ': ' + to_emit
        self.emit_data(to_emit)

    def emit_code(self, msg):
        self.dotcode.append(msg)

    def emit_data(self, msg):
        self.dotdata.append(msg)

    def off_reg(self, off, register):
        return f'{off * 4}({register})'

    def push(self, register, off = 0):
        self.emit_instruction(op.sw, register, self.off_reg(off, reg.sp))
        self.emit_instruction(op.addiu, reg.sp, reg.sp, -4)
        # self.emit_code(f'sw {reg} {off * 4}($sp)')
        # self.emit_code(f'addiu $sp $sp -4')

    def pop(self, register):
        self.emit_instruction(op.lw, register, self.off_reg(4, reg.sp))
        self.stack_allign()
        # self.emit_code(f'lw {reg} 4($sp)')
        # self.emit_code(f'addiu $sp $sp 4')

    def stack_allign(self):
        self.emit_instruction(op.addiu, reg.sp, reg.sp, 4)
        # self.emit_code('addiu $sp $sp 4')

    def emit_label(self, label):
        self.emit_code(label + ':')

    def eval_infix_func(self, node):
        self.visit(node.left)
        self.push(reg.a0)
        self.visit(node.right)
        self.pop(reg.t1)

    def infix_func(self, node, op, dest = reg.a0, source1 = reg.t1, source2 = reg.a0):
        self.eval_infix_func(node)
        self.emit_code(f'{op} {dest} {source1} {source2}')

    def __emit_i__(self, inst, args):
        result = inst
        if len(args) > 0:
            result += ' '
            params = filter(lambda x: x != None, args)
            result += ', '.join(map(lambda x: str(x), params))
        self.emit_code(result)

    def emit_instruction(self, inst: op, arg1: reg = None, arg2: reg = None, arg3: reg = None):
        self.__emit_i__(inst, [arg1, arg2, arg3])

    # ======================================================================
    # =[ VISIT ]============================================================
    # ======================================================================

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.CILProgram)
    def visit(self, node: ast.CILProgram):
        self.emit_code("\n# Program")
        # Init some utility functions
        self.init_utils()

        # Visit every data node in Program
        self.emit_code("\n# .data:")
        print(node.dotdata)
        for datanode in node.dotdata:
            self.visit(datanode)

        self.emit_code("\n# .types:")
        print(node.dottypes)
        # Visit every type node in Program
        for typenode in node.dottypes:
            self.visit(typenode)

        self.emit_code("\n# .code:")
        print(node.dotcode)
        # Visit every code node in Program
        for codenode in node.dotcode:
            self.visit(codenode)

    @visitor.when(ast.CILType)
    def visit(self, node: ast.CILType):
        """
        Object layout:
        - Class Tag
        - Object Size
        - Parent ptr
        - Function 1
        - Function 2
        ...
        """
        self.emit_code("\n# Type")
        self.emit_data_rec(datatype.word, [self.context.tags[node.name]], label=node.name)
        # Generate virtual table for this type
        for method in node.methods:
            self.emit_data_rec(datatype.word, [method.mname])

    @visitor.when(ast.CILData)
    def visit(self, node: ast.CILData):
        self.emit_data_rec(datatype.asciiz, [node.value], node.vname)

    @visitor.when(ast.CILFunction)
    def visit(self, node: ast.CILFunction):
        print(node.fname + " Function")
        self.emit_label(node.fname)
        self.emit_instruction(op.move, reg.fp, reg.sp)
        self.push(reg.ra)

        # self.pusha(['a0'])

        for instruction in node.instructions:
            self.visit(instruction)

        # self.popa(['a0'])

        computed = self.off_reg(1, reg.sp)
        self.emit_instruction(op.lw, reg.ra, computed)

        z = 4 * node.param_count + 8
        self.emit_instruction(op.addiu, reg.sp, reg.sp, z)
        
        computed = self.off_reg(0, reg.sp)
        self.emit_instruction(op.lw, reg.fp, computed)
        self.emit_instruction(op.jr, reg.ra)

    @visitor.when(ast.CILMethod)
    def visit(self, node: ast.CILMethod):
        self.emit_code("\n# Method")        
        self.emit_data(f'.word {node.name}')

    @visitor.when(ast.CILDummy)
    def visit(self, node: ast.CILDummy):
        self.emit_code("\n# Dummy")
        self.emit_code(node.value)

    # @visitor.when(ast.CILParam)
    # def visit(self, node: ast.CILParam):
    # 	pass

    @visitor.when(ast.CILLocal)
    def visit(self, node: ast.CILLocal):
        self.push(reg.t0)

    @visitor.when(ast.CILAssign)
    def visit(self, node: ast.CILAssign):
        self.emit_code("\n# Assign")
        # print(list(self.context.lmap.keys()))
        dest = self.context.lmap[node.dest]
        dest_offset = self.off_reg(-dest, reg.sp)
        self.emit_instruction(op.sw, reg.a0, dest_offset)

        # self.emit_code(f'move {dest} {node.source}')

    @visitor.when(ast.CILPlus)
    def visit(self, node: ast.CILPlus):
        self.emit_code("\n# Plus")
        self.infix_func(node, op.add)
        
    @visitor.when(ast.CILMinus)
    def visit(self, node: ast.CILMinus):
        self.emit_code("\n# Minus")
        self.infix_func(node, op.sub)

    @visitor.when(ast.CILStar)
    def visit(self, node: ast.CILStar):
        self.emit_code("\n# Star")
        self.infix_func(node, op.mul)

    @visitor.when(ast.CILDiv)
    def visit(self, node: ast.CILDiv):
        self.emit_code("\n# Div")
        self.infix_func(node, op.div)

    @visitor.when(ast.CILEqual)
    def visit(self, node: ast.CILEqual):
        self.eval_infix_func(node)
        return op.beq

    @visitor.when(ast.CILLessThan)
    def visit(self, node: ast.CILLessThan):
        self.eval_infix_func(node)
        return op.blt

    @visitor.when(ast.CILLessThanOrEqual)
    def visit(self, node: ast.CILLessThanOrEqual):
        self.eval_infix_func(node)
        return op.ble

    @visitor.when(ast.CILGoto)
    def visit(self, node: ast.CILGoto):
        self.emit_instruction(op.j, node.name)

    @visitor.when(ast.CILGotoIf)
    def visit(self, node: ast.CILGotoIf):
        branch_instruction = self.visit(node.condition)
        self.emit_instruction(branch_instruction, reg.a0, reg.t1, node.label)

    @visitor.when(ast.CILGetAttrib)
    def visit(self, node: ast.CILGetAttrib):
        # Attribute offset
        # loff = self.context.lmap[node.attribute]
        
        # $a0 contains the type of the instance.
        # Here we compute in $a0 the offset of the attribute
        computed = self.off_set(node.attribute, reg.a0)
        
        # Load into $a0 the value of the attribute
        self.emit_instruction(op.lw, reg.a0, computed)

    @visitor.when(ast.CILSetAttrib)
    def visit(self, node: ast.CILSetAttrib):
        self.emit_code("\n# SetAttrib")

        # Attribute offset
        # loff = self.context.lmap[node.attribute]
        
        # $a0 contains the type of the instance.
        # Here we compute in $a0 the offset of the attribute
        computed = self.off_set(node.attribute, reg.a0)
        
        # Load the value of src
        self.emit_instruction(op.lw, reg.t0, src)

        # Store into computed the value of `src`
        self.emit_instruction(op.sw, reg.a0, computed)


    @visitor.when(ast.CILAllocate)
    def visit(self, node: ast.CILAllocate):
        self.emit_code("\n# Allocate")
        self.emit_instruction(op.la, reg.a0, node.ttype)
        computed = self.off_reg(1, reg.a0)
        self.emit_instruction(op.lw, reg.a0, computed)
        self.emit_instruction(op.li, reg.v0, 9)
        self.emit_instruction(op.syscall)

    @visitor.when(ast.CILTypeOf)
    def visit(self, node: ast.CILTypeOf):
        self.emit_code("\n# TypeOf")
        self.emit_instruction(op.la, reg.a0, node.var)

    @visitor.when(ast.CILLabel)
    def visit(self, node: ast.CILLabel):
        self.emit_label(node.name)

    @visitor.when(ast.CILCall)
    def visit(self, node: ast.CILCall):
        self.emit_code("\n# Call")
        self.emit_instruction(op.jal, node.func)

    @visitor.when(ast.CILVCall)
    def visit(self, node: ast.CILVCall):
        self.emit_code("\n# VCall")
        if node.ttype:
            self.emit_instruction(op.la, reg.a0, node.ttype)

        # method_offset = self.context.fmap[node.func]
        # computed = self.off_reg(method_offset, reg.a0)
        # self.emit_instruction(op.lw, reg.a0, computed)
        self.emit_instruction(op.jal, self.context.mmap[node.func])
        
    @visitor.when(ast.CILArg)
    def visit(self, node: ast.CILArg):
        self.emit_code("\n# Arg")
        self.push(reg.a0)

    @visitor.when(ast.CILReturn)
    def visit(self, node: ast.CILReturn):
        self.emit_code("\n# Return")
self.emit_instruction(op.jr, reg.ra)

    # @visitor.when(ast.CILLoad)
    # def visit(self, node: ast.CILLoad):
    # 	self.emit_instruction(op.li, reg.a0, node.value)

    @visitor.when(ast.CILLength)
    def visit(self, node: ast.CILLength):
        pass

    @visitor.when(ast.CILConcat)
    def visit(self, node: ast.CILConcat):
        pass

    @visitor.when(ast.CILPrefix)
    def visit(self, node: ast.CILPrefix):
        pass

    @visitor.when(ast.CILSubstring)
    def visit(self, node: ast.CILSubstring):
        pass

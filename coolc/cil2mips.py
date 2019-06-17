from . import cilast as ast
from . import visitor
from . import mips_instruction_set as mis

class Cil2MipsVisitor:
	def __init__(self):
		self.code = []

	# ======================================================================
    # =[ UTILS ]============================================================
    # ======================================================================
	def emit(self, msg):
		self.code.append(msg)

	def push(self, reg, off):
		self.emit(f'sw {reg} {off}($sp)')
		self.emit(f'addiu $sp $sp -4')

	def pop(self, reg, off):
		self.emit(f'lw {reg} {off}($sp)')
		self.emit(f'addiu $sp $sp 4')

    # ======================================================================

    # ======================================================================
    # =[ VISIT ]============================================================
    # ======================================================================

	@visitor.on('node')
	def visit(self, node):
		pass

	@visitor.when(ast.CILNode)
	def visit(self, node: ast.CILNode):
		pass

	@visitor.when(ast.CILProgram)
	def visit(self, node: ast.CILProgram):
		pass

	@visitor.when(ast.CILType)
	def visit(self, node: ast.CILType):
		pass

	@visitor.when(ast.CILData)
	def visit(self, node: ast.CILData):
		pass

	@visitor.when(ast.CILFunction)
	def visit(self, node: ast.CILFunction):
		pass

	@visitor.when(ast.CILMethod)
	def visit(self, node: ast.CILMethod):
		pass

	@visitor.when(ast.CILParam)
	def visit(self, node: ast.CILParam):
		pass

	@visitor.when(ast.CILLocal)
	def visit(self, node: ast.CILLocal):
		pass

	@visitor.when(ast.CILAssign)
	def visit(self, node: ast.CILAssign):
		pass


	@visitor.when(ast.CILPlus)
	def visit(self, node: ast.CILPlus):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('add $a0 $t1 $a0')
		self.emit('addiu $sp $sp 4')
		

	@visitor.when(ast.CILMinus)
	def visit(self, node: ast.CILMinus):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('sub $a0 $t1 $a0')
		self.emit('addiu $sp $sp 4')

	@visitor.when(ast.CILStar)
	def visit(self, node: ast.CILStar):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('mulu $a0 $t1 $a0')
		self.emit('addiu $sp $sp 4')

	@visitor.when(ast.CILDiv)
	def visit(self, node: ast.CILDiv):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('divu $a0 $t1 $a0')
		self.emit('addiu $sp $sp 4')

	@visitor.when(ast.CILEqual)
	def visit(self, node: ast.CILEqual):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('addiu $sp $sp 4')
		return 'beq'

	@visitor.when(ast.CILLessThan)
	def visit(self, node: ast.CILLessThan):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('addiu $sp $sp 4')
		return 'bl'

	@visitor.when(ast.CILLessThanOrEqual)
	def visit(self, node: ast.CILLessThanOrEqual):
		self.visit(node.left)
		self.push('$a0', 0)
		self.visit(node.right)
		self.emit('lw $t1 4($sp)')
		self.emit('addiu $sp $sp 4')
		return 'ble'

	@visitor.when(ast.CILGoto)
	def visit(self, node: ast.CILGoto):
		self.emit('j ' + node.name)

	@visitor.when(ast.CILGotoIf)
	def visit(self, node: ast.CILGotoIf):
		branch_instruction = self.visit(node.condition)
		self.emit(f'{branch_instruction} $a0 $t1 {node.label}')

	@visitor.when(ast.CILGetAttrib)
	def visit(self, node: ast.CILGetAttrib):
		pass

	@visitor.when(ast.CILSetAttrib)
	def visit(self, node: ast.CILSetAttrib):
		pass

	@visitor.when(ast.CILGetIndex)
	def visit(self, node: ast.CILGetIndex):
		pass

	@visitor.when(ast.CILSetIndex)
	def visit(self, node: ast.CILSetIndex):
		pass

	@visitor.when(ast.CILAllocate)
	def visit(self, node: ast.CILAllocate):
		pass

	@visitor.when(ast.CILArray)
	def visit(self, node: ast.CILArray):
		pass

	@visitor.when(ast.CILTypeOf)
	def visit(self, node: ast.CILTypeOf):
		pass

	@visitor.when(ast.CILLabel)
	def visit(self, node: ast.CILLabel):
		self.emit(node.name + ':')

	@visitor.when(ast.CILCall)
	def visit(self, node: ast.CILCall):
		pass

	@visitor.when(ast.CILVCall)
	def visit(self, node: ast.CILVCall):
		# Save current frame pointer
		self.push('$fp', 0)
		
		# Generate code for each of the params and push them
		

	@visitor.when(ast.CILArg)
	def visit(self, node: ast.CILArg):
		self.push('$a0', 0)

	@visitor.when(ast.CILReturn)
	def visit(self, node: ast.CILReturn):
		pass

	@visitor.when(ast.CILLoad)
	def visit(self, node: ast.CILLoad):
		pass

	@visitor.when(ast.CILLoadSelf)
	def visit(self, node: ast.CILLoadSelf):
		pass

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

	@visitor.when(ast.CILToStr)
	def visit(self, node: ast.CILToStr):
		pass

	@visitor.when(ast.CILRead)
	def visit(self, node: ast.CILRead):
		pass

	@visitor.when(ast.CILPrint)
	def visit(self, node: ast.CILPrint):
		pass


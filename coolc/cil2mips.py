from . import cilast as ast
from . import visitor
from .mipsutils import reg, op

class Cil2MipsVisitor:
	def __init__(self, context):
		self.dotdata = []
		self.dotcode = []
		self.context = context

	# ======================================================================
    # =[ UTILS ]============================================================
    # ======================================================================
	
	def emit_code(self, msg):
		self.dotcode.append(msg)

	def emit_data(self, msg):
		self.dotdata.append(msg)

	def push(self, reg, off = 0):
		self.emit_code(f'sw {reg} {off * 4}($sp)')
		self.emit_code(f'addiu $sp $sp -4')

	def pop(self, reg):
		self.emit_code(f'lw {reg} 4($sp)')
		self.emit_code(f'addiu $sp $sp 4')

	def stack_allign(self):
		self.emit_code('addiu $sp $sp 4')

	def eval_infix_func(self, node):
		self.visit(node.left)
		self.push(reg.a0)
		self.visit(node.right)
		self.pop(reg.t1)

	def infix_func(self, node, op, dest = reg.a0, source1 = reg.t1, source2 = reg.a0):
		self.eval_infix_func(node)
		self.emit_code(f'{op} {dest} {source1} {source2}')

    # ======================================================================
    # =[ VISIT ]============================================================
    # ======================================================================

	@visitor.on('node')
	def visit(self, node):
		pass

	@visitor.when(ast.CILProgram)
	def visit(self, node: ast.CILProgram):
		pass

	@visitor.when(ast.CILType)
	def visit(self, node: ast.CILType):
		"""
		Object layout:
		- Class Tag
		- Object Size
		- Function 1
		- Function 2
		...
		"""
		# Type label
		self.emit_data(f'{node.name}:')
		
		# Class Tag
		self.emit_data(f'.word {self.context.tags{node.name}}')

		# Generate virtual table for this type
		for method in node.methods:
			self.emit_data(f'.word {method.name}')

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
		self.emit(f'move {node.dest} {node.source}')

	@visitor.when(ast.CILPlus)
	def visit(self, node: ast.CILPlus):
		self.infix_func(node, op.add)
		
	@visitor.when(ast.CILMinus)
	def visit(self, node: ast.CILMinus):
		self.infix_func(node, op.add)

	@visitor.when(ast.CILStar)
	def visit(self, node: ast.CILStar):
		self.infix_func(node, op.mul)

	@visitor.when(ast.CILDiv)
	def visit(self, node: ast.CILDiv):
		self.infix_func(node, op.div)

	@visitor.when(ast.CILEqual)
	def visit(self, node: ast.CILEqual):
		self.eval_infix_func(node)
		return 'beq'

	@visitor.when(ast.CILLessThan)
	def visit(self, node: ast.CILLessThan):
		self.eval_infix_func(node)
		return 'bl'

	@visitor.when(ast.CILLessThanOrEqual)
	def visit(self, node: ast.CILLessThanOrEqual):
		self.eval_infix_func(node)
		return 'ble'

	@visitor.when(ast.CILGoto)
	def visit(self, node: ast.CILGoto):
		self.emit_code('j ' + node.name)

	@visitor.when(ast.CILGotoIf)
	def visit(self, node: ast.CILGotoIf):
		branch_instruction = self.visit(node.condition)
		self.emit_code(f'{branch_instruction} $a0 $t1 {node.label}')

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
		self.emit_instruction(op.la, reg.a0, node.ttype)
		self.emit_instruction(op.lw, reg.a0, self.off_reg(1, reg.a0))
		self.emit_instruction(op.li, reg.v0, 9)
		self.emit_instruction(op.syscall)

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
		self.emit('jr $ra')

	@visitor.when(ast.CILLoad)
	def visit(self, node: ast.CILLoad):
		self.emit(f'li $a0 {node.value}')

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


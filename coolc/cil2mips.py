from . import cilast as ast
from . import visitor


class Cil2MipsVisitor:
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

	@visitor.when(ast.CILInstruction)
	def visit(self, node: ast.CILInstruction):
		pass

	@visitor.when(ast.CILAssign)
	def visit(self, node: ast.CILAssign):
		pass

	@visitor.when(ast.CILArithmetic)
	def visit(self, node: ast.CILArithmetic):
		pass

	@visitor.when(ast.CILPlus)
	def visit(self, node: ast.CILPlus):
		pass

	@visitor.when(ast.CILMinus)
	def visit(self, node: ast.CILMinus):
		pass

	@visitor.when(ast.CILStar)
	def visit(self, node: ast.CILStar):
		pass

	@visitor.when(ast.CILDiv)
	def visit(self, node: ast.CILDiv):
		pass

	@visitor.when(ast.CILBoolean)
	def visit(self, node: ast.CILBoolean):
		pass

	@visitor.when(ast.CILEqual)
	def visit(self, node: ast.CILEqual):
		pass

	@visitor.when(ast.CILLessThan)
	def visit(self, node: ast.CILLessThan):
		pass

	@visitor.when(ast.CILLessThanOrEqual)
	def visit(self, node: ast.CILLessThanOrEqual):
		pass

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
		pass

	@visitor.when(ast.CILGoto)
	def visit(self, node: ast.CILGoto):
		pass

	@visitor.when(ast.CILGotoIf)
	def visit(self, node: ast.CILGotoIf):
		pass

	@visitor.when(ast.CILCall)
	def visit(self, node: ast.CILCall):
		pass

	@visitor.when(ast.CILVCall)
	def visit(self, node: ast.CILVCall):
		pass

	@visitor.when(ast.CILArg)
	def visit(self, node: ast.CILArg):
		pass

	@visitor.when(ast.CILReturn)
	def visit(self, node: ast.CILReturn):
		pass

	@visitor.when(ast.CILLoad)
	def visit(self, node: ast.CILLoad):
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


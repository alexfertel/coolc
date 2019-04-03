from . import coolast as ast
from . import visitor


class Cil2MipsVisitor:
	@visitor.on('node')
	def visit(self, node):
		pass

	@visitor.when(ast.Node)
	def visit(self, node: ast.Node):
		pass

	@visitor.when(ast.Program)
	def visit(self, node: ast.Program):
		pass

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

	@visitor.when(ast.Constant)
	def visit(self, node: ast.Constant):
		pass

	@visitor.when(ast.Integer)
	def visit(self, node: ast.Integer):
		pass

	@visitor.when(ast.String)
	def visit(self, node: ast.String):
		pass

	@visitor.when(ast.Boolean)
	def visit(self, node: ast.Boolean):
		pass

	@visitor.when(ast.Expr)
	def visit(self, node: ast.Expr):
		pass

	@visitor.when(ast.NewObject)
	def visit(self, node: ast.NewObject):
		pass

	@visitor.when(ast.IsVoid)
	def visit(self, node: ast.IsVoid):
		pass

	@visitor.when(ast.Assignment)
	def visit(self, node: ast.Assignment):
		pass

	@visitor.when(ast.Block)
	def visit(self, node: ast.Block):
		pass

	@visitor.when(ast.DynamicDispatch)
	def visit(self, node: ast.DynamicDispatch):
		pass

	@visitor.when(ast.StaticDispatch)
	def visit(self, node: ast.StaticDispatch):
		pass

	@visitor.when(ast.Let)
	def visit(self, node: ast.Let):
		pass

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
		pass

	@visitor.when(ast.BooleanComplement)
	def visit(self, node: ast.BooleanComplement):
		pass

	@visitor.when(ast.BinaryOperation)
	def visit(self, node: ast.BinaryOperation):
		pass

	@visitor.when(ast.Addition)
	def visit(self, node: ast.Addition):
		pass

	@visitor.when(ast.Subtraction)
	def visit(self, node: ast.Subtraction):
		pass

	@visitor.when(ast.Multiplication)
	def visit(self, node: ast.Multiplication):
		pass

	@visitor.when(ast.Division)
	def visit(self, node: ast.Division):
		pass

	@visitor.when(ast.Equal)
	def visit(self, node: ast.Equal):
		pass

	@visitor.when(ast.LessThan)
	def visit(self, node: ast.LessThan):
		pass

	@visitor.when(ast.LessThanOrEqual)
	def visit(self, node: ast.LessThanOrEqual):
		pass

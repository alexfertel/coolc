from . import coolast as ast
from . import visitor
from .scope import Scope


class SemanticVisitor:

    def __init__(self, scope: Scope):
        self.__scope = scope

    @visitor.on('node')
    def visit(self, node, errors):
        pass

    @visitor.when(ast.Node)
    def visit(self, node: ast.Node, errors):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program, errors):
        valid = True
        for klass in node.classes:
            valid &= visit(klass, errors)

        return valid

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class, errors: list):
        valid = True
        for feature in node.features:
            valid &= visit(feature, errors)

        return valid

    @visitor.when(ast.ClassFeature)
    def visit(self, node: ast.ClassFeature, errors: list):
        pass

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod, errors: list):
        current_scope = self.__scope.create_child_scope()
        valid = True
        for param in node.formal_params:
            valid &= visit(param)
            current_scope.define_variable(param.name, param.param_type)

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute, errors: list):
        self.__scope.define_variable(node.name, node.attr_type)
        valid = visit(node.init_expr)
        if node.init_expr.return_type != node.attr_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        return valid

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter, errors: list):
        pass

    @visitor.when(ast.Object)
    def visit(self, node: ast.Object, errors):
        pass

    @visitor.when(ast.Self)
    def visit(self, node: ast.Self, errors):
        pass

    @visitor.when(ast.Constant)
    def visit(self, node: ast.Constant, errors):
        pass

    @visitor.when(ast.Integer)
    def visit(self, node: ast.Integer, errors):
        node.return_value = 'Int'
        return True

    @visitor.when(ast.String)
    def visit(self, node: ast.String, errors):
        node.return_value = 'String'
        if len(node.content) > 1024:
            errors.append('String type only can have 1024 characters.')
            return False
        return True

    @visitor.when(ast.Boolean)
    def visit(self, node: ast.Boolean, errors):
        node.return_value = 'Bool'
        return True

    @visitor.when(ast.Expr)
    def visit(self, node: ast.Expr, errors):
        pass

    @visitor.when(ast.NewObject)
    def visit(self, node: ast.NewObject, errors):
        pass

    @visitor.when(ast.IsVoid)
    def visit(self, node: ast.IsVoid, errors):
        pass

    @visitor.when(ast.Assignment)
    def visit(self, node: ast.Assignment, errors):
        pass

    @visitor.when(ast.Block)
    def visit(self, node: ast.Block, errors):
        pass

    @visitor.when(ast.DynamicDispatch)
    def visit(self, node: ast.DynamicDispatch, errors):
        pass

    @visitor.when(ast.StaticDispatch)
    def visit(self, node: ast.StaticDispatch, errors):
        pass

    @visitor.when(ast.Let)
    def visit(self, node: ast.Let, errors):
        pass

    @visitor.when(ast.If)
    def visit(self, node: ast.If, errors):
        pass

    @visitor.when(ast.WhileLoop)
    def visit(self, node: ast.WhileLoop, errors):
        pass

    @visitor.when(ast.Case)
    def visit(self, node: ast.Case, errors):
        pass

    @visitor.when(ast.Action)
    def visit(self, node: ast.Action, errors):
        pass

    @visitor.when(ast.UnaryOperation)
    def visit(self, node: ast.UnaryOperation, errors):
        pass

    @visitor.when(ast.IntegerComplement)
    def visit(self, node: ast.IntegerComplement, errors):
        valid = visit(node.integer_expr)
        if node.integer_expr.return_type != 'Int':
            valid = False
            errors.append('Operator \"~\" is used only on Integer expresions.')

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.BooleanComplement)
    def visit(self, node: ast.BooleanComplement, errors):
        valid = visit(node.boolean_expr)
        if node.boolean_expr.return_type != 'Bool':
            valid = False
            errors.append('Operator \"~\" is used only on Boolean expresions.')

        node.return_type = 'Bool'

        return valid

    @visitor.when(ast.BinaryOperation)
    def visit(self, node: ast.BinaryOperation, errors):
        pass

    @visitor.when(ast.Addition)
    def visit(self, node: ast.Addition, errors):
        valid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Subtraction)
    def visit(self, node: ast.Subtraction, errors):
        alid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Multiplication)
    def visit(self, node: ast.Multiplication, errors):
        alid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Division)
    def visit(self, node: ast.Division, errors):
        alid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Equal)
    def visit(self, node: ast.Equal, errors):
        valid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan, errors):
        valid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual, errors):
        valid = visit(node.first)
        valid &= visit(node.second)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

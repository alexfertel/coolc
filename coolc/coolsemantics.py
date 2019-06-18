from . import coolast as ast
from . import visitor
from .scope import Scope

# print('-----------------TEST------------------')
# print(a)
# print('---------------------------------------')


class SemanticVisitor:

    def __init__(self, scope: Scope):
        self.__scope = scope
        self.__current_class_name = ""

    def __real_type(self, var) -> str:
        return var if var != 'SELF_TYPE' else self.__current_class_name

    def __sub_type(self, klass: str, ancestor_class: str) -> bool:
        return self.__scope.get_type(klass).is_ancestor(ancestor_class, self.__scope)

    def __lca_type(self, type_a, type_b):
        a = self.__scope.get_type(self.__real_type(type_a))
        b = self.__scope.get_type(self.__real_type(type_b))
        if a.is_ancestor(b) and b.is_ancestor(b):
            return b.name
        if a.is_ancestor(a) and b.is_ancestor(a):
            return a.name

        while a.parent != None:
            a = a.parent
            if b.is_ancestor(a):
                return a.name

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
            valid &= self.visit(klass, errors)

        return valid

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class, errors: list):
        valid = True
        self.__scope = self.__scope.create_child_scope()
        self.__current_class_name = node.name
        for feature in node.features:
            if type(feature) == 'ClassMethod':
                if node.parent is not None:
                    acestor_method = node.parent.get_method(
                        feature.name, self.__scope)
                    if ancestor_method is not None:
                        if len(ancestor_methods.formal_params) != len(feature.formal_params):
                            valid = False
                            errors.append(
                                "Number of params isn't equal methode %s can't be overrided." % (feature.name))
                        for i in range(len(feature.formal_params)):
                            if ancestor_method.formal_params[i].param_type != feature.formal_params[i].param_type:
                                valid = False
                                errors.append(
                                    'Params of method %s are not equal type, this method can\'t be overrided.' % (feature.name))
                        if feature.return_type != ancestor_method.return_type:
                            valid = False
                            errors.append(
                                'Return type of method %s are not equal, this method can\'t be overrided.' % (feature.name))

            valid &= self.visit(feature, errors)

        self.__scope = self.__scope.parent
        return valid

    @visitor.when(ast.ClassFeature)
    def visit(self, node: ast.ClassFeature, errors: list):
        pass

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod, errors: list):
        self.__scope = self.__scope.create_child_scope()
        valid = True
        for param in node.formal_params:
            valid &= self.visit(param, errors)

        valid &= self.visit(node.body, errors)
        self.__scope = self.__scope.parent

        if not self.__sub_type(self.__real_type(node.body.return_type), self.__real_type(node.return_type)):
            valid = False
            errors.append(
                'Return type of method <%s> and return type of its body are different.' % (node.name))

        return valid

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute, errors: list):
        valid = self.visit(node.init_expr, errors)

        if self.__sub_type(self.__real_type(node.init_expr.return_type), self.__real_type(node.attr_type)):
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))
        self.__scope.define_variable(node.name, node.attr_type)
        return valid

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter, errors: list):
        self.__scope.define_variable(node.name, node.param_type)
        return True

    @visitor.when(ast.Object)
    def visit(self, node: ast.Object, errors: list):
        valid = True
        if not self.__scope.is_defined(node.name):
            valid = False
            errors.append(
                'Variable <%s> is not defined in this scope.' % (node.name))
        else:
            node.return_type = self.__scope.get_variable_info(node.name).type

        return valid

    @visitor.when(ast.Self)
    def visit(self, node: ast.Self, errors):
        node.return_type = self.__current_class_name
        return True

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
    def visit(self, node: ast.NewObject, errors: list):
        valid = True
        if node.type != 'SELF_TYPE' and self.__scope.get_type(node.type) is None:
            valid = False
            errors.append('Type <%s> doesn\'t exist.' % (node.type))
        node.return_type = node.type
        return valid

    @visitor.when(ast.IsVoid)
    def visit(self, node: ast.IsVoid, errors):
        valid = self.visit(node.expr, errors)
        return valid

    @visitor.when(ast.Assignment)
    def visit(self, node: ast.Assignment, errors):
        valid = self.visit(node.instance, errors)
        valid &= self.visit(node.expr, errors)

        if self.__sub_type(self.__real_type(node.expr.return_type), self.__real_type(node.instance.return_type)):
            valid = False
            errors.append('Type <%s> can\'t be assigned into var with type <%s>' % (
                self.__real_type(node.expr.return_type), self.__real_type(node.instance.return_type)))

        node.return_type = node.expr.return_type

        return valid

    @visitor.when(ast.Block)
    def visit(self, node: ast.Block, errors: list):
        valid = True
        if len(node.expr_list) == 0:
            valid = False
            errors.append('A block expresion most be one expresion at least.')

        for expr in node.expr_list:
            valid &= self.visit(expr, errors)

        node.return_type = node.expr_list[-1].return_type

        return valid

    @visitor.when(ast.DynamicDispatch)
    def visit(self, node: ast.DynamicDispatch, errors: list):
        valid = True
        for argument in node.arguments:
            valid &= self.visit(argument, errors)

        valid &= self.visit(node.instance, errors)
        if node.instance.return_type is None:
            return False

        method = self.__scope.get_type(
            node.instance.return_type).get_method(node.method, self.__scope)

        if method is None:
            valid = False
            errors.append('Class <%s> not contain method <%s>.' %
                          (node.instance.return_type, node.method))
        else:
            if len(node.arguments) != len(method.formal_params):
                valid = False
                errors.append('Different number of params')
            else:
                for i in range(len(node.arguments)):
                    if node.arguments[i].return_type != method.formal_params[i].param_type:
                        valid = False
                        errors.append('Params not have the same types.')
                node.return_type = method.return_type if method.return_type != 'SELF_TYPE' else node.instance.return_type

        return valid

    @visitor.when(ast.StaticDispatch)
    def visit(self, node: ast.StaticDispatch, errors: list):
        valid = True
        for argument in node.arguments:
            valid &= self.visit(argument, errors)
        static_type = self.__scope.get_type(node.dispatch_type)

        valid &= self.visit(node.instance, errors)

        if not self.__sub_type(node.instance.return_type, node.dispatch_type):
            valid = False
            errors.append('Type <%s> isn\'t a subtype of type <%s>.' %
                          (node.instance.return_type, node.dispatch_type))
        method = self.__scope.get_type(
            node.dispatch_type).get_method(node.method, self.__scope)

        if method is None:
            valid = False
            errors.append('Class <%s> not contain method <%s>.' %
                          (node.instance.return_type, node.method))
        else:
            if len(node.arguments) != len(method.formal_params):
                valid = False
                errors.append('Different number of params')
            else:
                for i in range(len(node.arguments)):
                    if node.arguments[i].return_type != method.formal_params[i].param_type:
                        valid = False
                        errors.append('Params not have the same types.')

        node.return_type = method.return_type if method.return_type != 'SELF_TYPE' else node.dispatch_type

        return valid

    @visitor.when(ast.Let)
    def visit(self, node: ast.Let, errors: list):
        valid = True
        self.__scope = self.__scope.create_child_scope()
        for declaration in node.declaration_list:
            valid &= self.visit(declaration, errors)

        valid &= self.visit(node.body, errors)
        node.return_type = node.body.return_type

        self.__scope = self.__scope.parent

        return valid

    @visitor.when(ast.Declaration)
    def visit(self, node: ast.Declaration, errors: list):
        valid = self.visit(node.expression, errors)
        if not self.__sub_type(self.__real_type(node.expression.return_type), self.__real_type(node.ttype)):
            valid = False
            errors.append('<%s> is defined with type <%s> diferent of type <%s>' % (
                node.identifier.name, node.ttype, node.expression.return_type))

        node.return_type = node.ttype
        # print('-----------------TEST------------------')
        # print(node.identifier.name)
        # print('---------------------------------------')
        self.__scope.define_variable(node.identifier.name, node.ttype)

        return valid

    @visitor.when(ast.If)
    def visit(self, node: ast.If, errors):
        valid = self.visit(node.predicate, errors) and self.visit(
            node.else_body, errors) and self.visit(node.else_body, errors)

        node.return_type = self.__lca_type(
            node.then_body.return_type, node.else_body.return_type)

        return valid

    @visitor.when(ast.WhileLoop)
    def visit(self, node: ast.WhileLoop, errors: list):
        valid = self.visit(node.predicate, errors)
        if node.predicate.return_type != 'Bool':
            valid = False
            errors.append('Loop condition doesn\'t return a <boolean> value.')

        valid &= node.body
        node.return_type = 'Object'

        return valid

    @visitor.when(ast.Case)
    def visit(self, node: ast.Case, errors):
        valid = self.visit(node.expr, errors)
        if len(node.actions) != 0:
            valid &= self.visit(node.actions[0], errors)
            node.return_type = node.actions[0].return_type

            for action in node.actions:
                self.__scope = self.__scope.create_child_scope()
                valid &= self.visit(action, errors)
                node.return_type = self.__lca_type(
                    node.return_type, action.return_type)
                self.__scope = self.__scope.parent

        return valid

    @visitor.when(ast.Action)
    def visit(self, node: ast.Action, errors):
        self.__scope.define_variable(node.name, node.action_type)
        valid = self.visit(node.body, errors)
        node.return_type = node.body.return_type
        return valid

    @visitor.when(ast.UnaryOperation)
    def visit(self, node: ast.UnaryOperation, errors):
        pass

    @visitor.when(ast.IntegerComplement)
    def visit(self, node: ast.IntegerComplement, errors):
        valid = self.visit(node.integer_expr, errors)
        if node.integer_expr.return_type != 'Int':
            valid = False
            errors.append('Operator \"~\" is used only on Integer expresions.')

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.BooleanComplement)
    def visit(self, node: ast.BooleanComplement, errors):
        valid = self.visit(node.boolean_expr, errors)
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
        valid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Subtraction)
    def visit(self, node: ast.Subtraction, errors):
        alid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Multiplication)
    def visit(self, node: ast.Multiplication, errors):
        alid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Division)
    def visit(self, node: ast.Division, errors):
        alid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Int'

        return valid

    @visitor.when(ast.Equal)
    def visit(self, node: ast.Equal, errors):
        valid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

    @visitor.when(ast.LessThan)
    def visit(self, node: ast.LessThan, errors):
        valid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

    @visitor.when(ast.LessThanOrEqual)
    def visit(self, node: ast.LessThanOrEqual, errors):
        valid = self.visit(node.first, errors)
        valid &= self.visit(node.second, errors)
        if node.first.return_type != node.second.return_type:
            valid = False
            errors.append('Types <%s> and <%s> are differente.' %
                          (node.init_expr.return_type, node.attr_type))

        node.return_type = 'Bool'

        return valid

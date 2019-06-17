from . import coolast as ast
from . import visitor
from .scope import Scope


class TypeCollectorVisitor:
    def __init__(self):
        self.__scope = None
        self.__errors = []

    def __add_builtins(self):
        """
        Create COOL Builtin Classes: Object, IO, Int, Bool and String.
        """

        # Object Class
        return_value = self.__scope.create_type('Object')
        if return_value != 'Ok':
            self.__errors.append(return_value)

        # IO Class
        return_value = self.__scope.create_type('IO')
        if return_value != 'Ok':
            self.__errors.append(return_value)

        # Int Class
        return_value = self.__scope.create_type('Int')
        if return_value != 'Ok':
            self.__errors.append(return_value)

        # Bool Class
        return_value = self.__scope.create_type('Bool')
        if return_value != 'Ok':
            self.__errors.append(return_value)

        # String Class
        return_value = self.__scope.create_type('String')
        if return_value != 'Ok':
            self.__errors.append(return_value)

    def get_errors(self):
        return self.__errors

    def get_scope(self):
        return self.__scope

    # Visitor

    @visitor.on('node')
    def visit(self, node, errors):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        self.__scope = Scope()
        self.__add_builtins()

        for current_class in node.classes:
            self.visit(current_class)

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        return_value = self.__scope.create_type(node.name)
        if return_value != 'Ok':
            self.__errors.append(return_value)

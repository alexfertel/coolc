from . import coolast as ast
from . import visitor
from .scope import Scope


class TypeBuilderVisitor:
    def __init__(self, scope: Scope):
        self.__scope = scope
        self.__current_class = None
        self.__has_main = 0
        self.__bad_main = 0
        self.__errors = []

    def __build_builtins(self):
        """
        Initializes the COOL Builtin Classes: Object, IO, Int, Bool and String.
        """

        # Object features

        # Abort method: halts the program.
        self.__scope.get_type('Object').features.append(ast.ClassMethod(name="abort",
                                                                        formal_params=[],
                                                                        return_type="Object",
                                                                        body=None))
        # Copy method: copies the object.
        self.__scope.get_type('Object').features.append(ast.ClassMethod(name="copy",
                                                                        formal_params=[],
                                                                        return_type="SELF_TYPE",
                                                                        body=None))
        # type_name method: returns a string representation of the class name.
        self.__scope.get_type('Object').features.append(ast.ClassMethod(name="type_name",
                                                                        formal_params=[],
                                                                        return_type="String",
                                                                        body=None))

        # IO parent
        self.__scope.get_type('IO').parent = 'Object'

        # IO features

        # in_int: reads an integer from stdio
        self.__scope.get_type('IO').features.append(ast.ClassMethod(name="in_int",
                                                                    formal_params=[],
                                                                    return_type="Int",
                                                                    body=None))
        # in_string: reads a string from stdio
        self.__scope.get_type('IO').features.append(ast.ClassMethod(name="in_string",
                                                                    formal_params=[],
                                                                    return_type="String",
                                                                    body=None))
        # out_int: outputs an integer to stdio
        self.__scope.get_type('IO').features.append(ast.ClassMethod(name="out_int",
                                                                    formal_params=[
                                                                        ast.FormalParameter("arg", "Int")],
                                                                    return_type="SELF_TYPE",
                                                                    body=None))
        # out_string: outputs a string to stdio
        self.__scope.get_type('IO').features.append(ast.ClassMethod(name="out_string",
                                                                    formal_params=[
                                                                        ast.FormalParameter("arg", "String")],
                                                                    return_type="SELF_TYPE",
                                                                    body=None))

        # Int parent
        self.__scope.get_type('Int').parent = 'Object'

        # Int features

        # _val attribute: integer un-boxed value
        self.__scope.get_type('Int').features.append(ast.ClassAttribute(
            name="_val", attr_type="unboxed_int", init_expr=None))

        # Bool parent
        self.__scope.get_type('Bool').parent = 'Object'

        # Bool Class

        # _val attribute: boolean un-boxed value
        self.__scope.get_type('Bool').features.append(ast.ClassAttribute(
            name="_val", attr_type="unboxed_boolean", init_expr=None))

        # String parent
        self.__scope.get_type('String').parent = 'Object'

        # String Class

        # _val attribute: string length
        self.__scope.get_type('String').features.append(
            ast.ClassAttribute(name='_val', attr_type='Int', init_expr=None))
        # _str_field attribute: an un-boxed, untyped string value
        self.__scope.get_type('String').features.append(
            ast.ClassAttribute(name='_val', attr_type='Int', init_expr=None))
        # length method: returns the string's length
        self.__scope.get_type('String').features.append(ast.ClassMethod(
            name='length', formal_params=[], return_type='Int', body=None))
        # concat method: concatenates this string with another
        self.__scope.get_type('String').features.append(ast.ClassMethod(name='concat',
                                                                        formal_params=[
                                                                            ast.FormalParameter('arg', 'String')],
                                                                        return_type='String',
                                                                        body=None),)
        # substr method: returns the substring between two integer indices
        self.__scope.get_type('String').features.append(ast.ClassMethod(name='substr',
                                                                        formal_params=[ast.FormalParameter(
                                                                            'arg1', 'Int'), ast.FormalParameter('arg2', 'Int')],
                                                                        return_type='String',
                                                                        body=None))

    def get_errors(self):
        return self.__errors

    def get_scope(self):
        return self.__scope

    @visitor.on('node')
    def visit(self, node, errors):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        self.__build_builtins()

        valid = 1
        for klass in node.classes:
            valid &= self.visit(klass)

        # Program must have a Main class declared
        valid &= 1 if self.__scope.get_type('Main') is not None else 0
        if not valid:
            self.__errors.append(
                "This program does not have a <Main> class, every Cool program must!")
            return valid

        # Main class must have a 'main' method without formal params
        if not self.__has_main:
            self.__errors.append(
                "The <Main> class does not have a 'main' method!")
            return 0

        if self.__bad_main:
            self.__errors.append("The 'main' method has parameters!")
            return 0

        return valid

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        self.__current_class = self.__scope.get_type(node.name)

        # Check if parent class exist
        if node.parent not in self.__scope.get_types_dict().keys():
            self.__errors.append('Class %s doesn\'t exist.' % (node.parent))
        else:
            self.__current_class.parent = node.parent

        # Check if features of this class are defined only once
        unique = 1
        for feature in node.features:
            unique &= self.visit(feature)

        return unique

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod):
        # Check if method is defined in the current class only once
        if self.__current_class.contain_method(node.name):
            self.__errors.append(
                f"Method '{node.name}' is defined more than once in class <{self.__current_class.name}>!")
            return 0

        self.__current_class.features.append(node)

        # If this conditions are met, a 'Main' class with a 'main' method is present
        if node.name == 'main' and self.__current_class.name == 'Main':
            self.__has_main = 1

            if len(node.formal_params) != 0:
                self.__bad_main == 1

        return 1

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute):
        print('--------')
        print(node.clsname)
        # Check if attribute is defined in the current class only once
        if self.__current_class.get_attr(node.name) is not None:
            self.__errors.append(
                f"Attribute '{node.name}' is defined more than once in class <{self.__current_class.name}>!")
            return 0

        self.__current_class.features.append(node)

        return 1

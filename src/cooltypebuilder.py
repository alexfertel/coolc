import coolast as ast
import visitor
from scope import Scope

class TypeBuilderVisitor:
    def __init__(self, scope: Scope):
        self.__scope = scope

    def __build_builtins(self):
        """
        Initializes the COOL Builtin Classes: Object, IO, Int, Bool and String.
        """

        #Object features

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
                                                                        formal_params=[ast.FormalParameter("arg", "Int")],
                                                                        return_type="SELF_TYPE",
                                                                        body=None))
        # out_string: outputs a string to stdio
        self.__scope.get_type('IO').features.append(ast.ClassMethod(name="out_string",
                                                                        formal_params=[ast.FormalParameter("arg", "String")],
                                                                        return_type="SELF_TYPE",
                                                                        body=None))


        # Int features

        # _val attribute: integer un-boxed value
        self.__scope.get_type('Int').features.append(ast.ClassAttribute(name="_val", attr_type="unboxed_int", init_expr=None))


        # Bool Class

        # _val attribute: boolean un-boxed value
        self.__scope.get_type('Bool').features.append(ast.ClassAttribute(name="_val", attr_type="unboxed_boolean", init_expr=None))


        # String Class

        # _val attribute: string length
        self.__scope.get_type('String').features.append(ast.ClassAttribute(name='_val', attr_type='Int', init_expr=None))
        # _str_field attribute: an un-boxed, untyped string value
        self.__scope.get_type('String').features.append(ast.ClassAttribute(name='_val', attr_type='Int', init_expr=None))
        # length method: returns the string's length
        self.__scope.get_type('String').features.append(ast.ClassMethod(name='length', formal_params=[], return_type='Int', body=None))
        # concat method: concatenates this string with another
        self.__scope.get_type('String').features.append(ast.ClassMethod(name='concat',
                                                                        formal_params=[ast.FormalParameter('arg', 'String')],
                                                                        return_type='String',
                                                                        body=None),)
        # substr method: returns the substring between two integer indices
        self.__scope.get_type('String').features.append(ast.ClassMethod(name='substr',
                                                                        formal_params=[ast.FormalParameter('arg1', 'Int'), ast.FormalParameter('arg2', 'Int')],
                                                                        return_type='String',
                                                                        body=None))

    @visitor.on('node')
    def visit(self, node, errors):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program, errors):
        self.__build_builtins()

        valid = 1
        for klass in node.classes:
            valid &= self.visit(klass, errors)

        # Program must have a Main class declared
        valid &= 1 if self.__scope.get_type('Main') is not None else 0
        if not valid:
            errors.append("This program does not have a <Main> class, every Cool program must!")
            return valid

        # Main class must have a 'main' method without formal params
        if not self.has_main:
            errors.append("The <Main> class does not have a 'main' method!")

        # TODO: when checking formal parameters, the main method mustn't have any.
        return valid & self.has_main

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class, errors):
        # Each time we start analysing a new class we have to clear the current_class dict
        self.clear()

        # Check if class is defined only once
        if node.name in self.types.keys():
            # or node.name in reserved.keys(): I think this gets fixed in parsing.
            # TODO: Check the above!
            # Update: Checked it with tests/misused_identifiers.cl. It happens while parsing.
            errors.append(f'Class with name <{node.name}> is defined more than once!')
            return 0

        self.current_class['name'] = node.name  # Visiting this class's features

        # Check if features of this class are defined only once
        unique = 1
        for feature in node.features:
            unique &= self.visit(feature, errors)

        # Add this classname to the defined types
        self.types[node.name] = node
        return unique

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod, errors):
        class_methods = self.current_class['method_names']
        # Check if method is defined in the current class only once
        if node.name in class_methods:
            errors.append(f"Method '{node.name}' is defined more than once in class <{self.current_class['name']}>!")
            return 0

        class_methods.add(node.name)

        # If this conditions are met, a 'Main' class with a 'main' method is present
        if node.name == 'main' and self.current_class['name'] == 'Main':
            self.has_main = 1

        return 1

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute, errors):
        class_attr = self.current_class['attr_names']
        # Check if attribute is defined in the current class only once
        if node.name in class_attr:
            errors.append(f"Attribute '{node.name}' is defined more than once in class <{self.current_class['name']}>!")
            return 0

        class_attr.add(node.name)
        return 1
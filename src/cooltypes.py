import coolast as ast
import visitor as visitor


# from .coolex import cool_reserved as reserved


class TypesVisitor:
    def __init__(self):
        self.types = {}  # Type Name => AST.Class instance
        self.clear()

    def clear(self):
        self.current_class = {
            'name': '',
            'method_names': set(),
            'attr_names': set()
        }

    @staticmethod
    def add_builtins(root: ast.Program) -> ast.Program:
        """
        Initializes the COOL Builtin Classes: Object, IO, Int, Bool and String, and adds them to the Program AST node.
        :param root: an AST.Program class instance, represents a COOL program AST.
        :return: a new AST.Program class instance.
        """

        assert root is not None, 'TypesVisitor.add_builtins received None arg.'
        assert isinstance(root, ast.Program), f'TypesVisitor.add_builtins expected arg to be of type ast.Program, ' \
                                              f'but got {type(root)} instead.'

        # Object Class
        object_class = ast.Class(name="Object", parent=None, features=[
            # Abort method: halts the program.
            ast.ClassMethod(name="abort", formal_params=[], return_type="Object", body=None),

            # Copy method: copies the object.
            ast.ClassMethod(name="copy", formal_params=[], return_type="SELF_TYPE", body=None),

            # type_name method: returns a string representation of the class name.
            ast.ClassMethod(name="type_name", formal_params=[], return_type="String", body=None)
        ])

        # IO Class
        io_class = ast.Class(name="IO", parent="Object", features=[
            # in_int: reads an integer from stdio
            ast.ClassMethod(name="in_int", formal_params=[], return_type="Int", body=None),

            # in_string: reads a string from stdio
            ast.ClassMethod(name="in_string", formal_params=[], return_type="String", body=None),

            # out_int: outputs an integer to stdio
            ast.ClassMethod(name="out_int",
                            formal_params=[ast.FormalParameter("arg", "Int")],
                            return_type="SELF_TYPE",
                            body=None),

            # out_string: outputs a string to stdio
            ast.ClassMethod(name="out_string",
                            formal_params=[ast.FormalParameter("arg", "String")],
                            return_type="SELF_TYPE",
                            body=None)
        ])

        # Int Class
        int_class = ast.Class(name="Int", parent=object_class.name, features=[
            # _val attribute: integer un-boxed value
            ast.ClassAttribute(name="_val", attr_type="unboxed_int", init_expr=None)
        ])

        # Bool Class
        bool_class = ast.Class(name="Bool", parent=object_class.name, features=[
            # _val attribute: boolean un-boxed value
            ast.ClassAttribute(name="_val", attr_type="unboxed_boolean", init_expr=None)
        ])

        # String Class
        string_class = ast.Class(name="String", parent=object_class.name, features=[
            # _val attribute: string length
            ast.ClassAttribute(name='_val', attr_type='Int', init_expr=None),

            # _str_field attribute: an un-boxed, untyped string value
            ast.ClassAttribute(name='_str_field', attr_type="unboxed_string", init_expr=None),

            # length method: returns the string's length
            ast.ClassMethod(name='length', formal_params=[], return_type='Int', body=None),

            # concat method: concatenates this string with another
            ast.ClassMethod(name='concat',
                            formal_params=[ast.FormalParameter('arg', 'String')],
                            return_type='String',
                            body=None),

            # substr method: returns the substring between two integer indices
            ast.ClassMethod(name='substr',
                            formal_params=[ast.FormalParameter('arg1', 'Int'), ast.FormalParameter('arg2', 'Int')],
                            return_type='String',
                            body=None)
        ])

        # Built in classes collection
        builtin_classes = (object_class, io_class, int_class, bool_class, string_class)

        # All classes
        all_classes = builtin_classes + root.classes

        return ast.Program(classes=all_classes)

    @visitor.on('node')
    def visit(self, node, errors):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program, errors):
        valid = 1
        for class_declaration in node.classes:
            valid &= self.visit(class_declaration, errors)
        return valid

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class, errors):
        # Each time we start analysing a new class we have to clear the current_class dict
        self.clear()

        # Check if class is defined only once
        if node.name in self.types.keys():
            # or node.name in reserved.keys(): I think this gets fixed in lexing.
            # TODO: Check the above!
            errors.append(f'Class with name {node.name} is defined more than once!')
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
            errors.append(f'Method {node.name} is defined more than once in class {self.current_class["name"] }!')
            return 0

        class_methods.add(node.name)
        return 1

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute, errors):
        class_attr = self.current_class['attr_names']
        # Check if attribute is defined in the current class only once
        if node.name in class_attr:
            errors.append(f'Attribute {node.name} is defined more than once in class {self.current_class["name"] }!')
            return 0

        class_attr.add(node.name)
        return 1

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

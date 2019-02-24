import coolast as ast
import visitor
from scope import Scope

class TypeCollectorVisitor:
    def __init__(self):
        self.__scope = Scope()

    # def __add_builtins(self) -> ast.Program:
    #     """
    #     Initializes the COOL Builtin Classes: Object, IO, Int, Bool and String, and adds them to the Program AST node.
    #     :param root: an AST.Program class instance, represents a COOL program AST.
    #     :return: a new AST.Program class instance.
    #     """

    #     assert root is not None, 'TypesVisitor.add_builtins received None arg.'
    #     assert isinstance(root, ast.Program), f'TypesVisitor.add_builtins expected arg to be of type ast.Program, ' \
    #                                           f'but got {type(root)} instead.'

    #     # Object Class
    #     object_class = ast.Class(name="Object", parent=None, features=[])
    #     self.types['Object'] = object_class

    #     # IO Class
    #     io_class = ast.Class(name="IO", parent=object_class.name, features=[])
    #     self.types['IO'] = io_class

    #     # Int Class
    #     int_class = ast.Class(name="Int", parent=object_class.name, features=[])
    #     self.types['IO'] = io_class

    #     # Bool Class
    #     bool_class = ast.Class(name="Bool", parent=object_class.name, features=[])

    #     # String Class
    #     string_class = ast.Class(name="String", parent=object_class.name, features=[])

    #     # Built in classes collection
    #     builtin_classes = (object_class, io_class, int_class, bool_class, string_class)

    #     # All classes
    #     all_classes = builtin_classes + root.classes

    #     return ast.Program(classes=all_classes)


import coolast as ast
import visitor as visitor


# from .coolex import cool_reserved as reserved


class TypesVisitor:
    def __init__(self):
        self.types = {}
        self.current_class = {
            'name': '',
            'method_names': set(),
            'attr_names': set()
        }

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        valid = 1
        for class_declaration in node.classes:
            valid &= self.visit(class_declaration)
        return valid

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        # Check if class is defined only once
        if node.name in self.types.keys():
            # or node.name in reserved.keys(): I think this gets fixed in lexing.
            return 0

        self.current_class['name'] = self.node.name.value  # Visiting this class's features

        # Check if features of this class are defined only once
        unique = 1
        for feature in node.features:
            unique &= self.visit(feature)

        # Add this classname to the defined types
        self.types[node.name.value] = node
        return unique

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod):
        return 0 if node.name in self.current_class['method_names'] else 1

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute):
        return 0 if node.name in self.current_class['attr_names'] else 1

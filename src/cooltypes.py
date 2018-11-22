import coolast as ast
import visitor as visitor


# from .coolex import cool_reserved as reserved


class TypesVisitor:
    def __init__(self):
        self.types = {}

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
        if node.name in self.types.keys():
            # or node.name in reserved.keys(): I think this gets fixed in lexing.
            return 0

        self.types[node.name.value] = node
        return 1

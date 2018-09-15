import coolast as ast
import visitor as visitor


class TypesVisitor:
    def __init__(self):
        self.types = {}

    @visitor.on('node')
    def visit(self, node):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        for class_declaration in node.classes:
            self.visit(class_declaration)
        return self.types

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        self.types[node.name.value] = node

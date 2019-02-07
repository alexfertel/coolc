import coolast as ast
import visitor


class PaintVisitor:
    @visitor.on('node')
    def visit(self, node, tabs):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program, tabs):
        ans = 'Program\n'
        for klass in node.classes:
            ans += self.visit(node.classes, tabs + 1)
        # ans = 'Program\n' + self.visit(node.classes, tabs+1)
        return ans

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class, tabs):
        ans = '\t' * tabs + '\__' + node
        for feature in features:
            ans += self.visit(feature, tabs + 1)
        return ans

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod, tabs):
        pass

    @visitor.when(ast.ClassAttribute)
    def visit(self, node: ast.ClassAttribute, tabs):
        pass

    @visitor.when(ast.FormalParameter)
    def visit(self, node: ast.FormalParameter, tabs):
        pass

    @visitor.when(ast.ClassMethod)
    def visit(self, node: ast.ClassMethod, tabs):
        pass


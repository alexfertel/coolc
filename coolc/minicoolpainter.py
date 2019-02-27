# TODO: We should convert this from miniCool to Cool!
from . import coolast as ast
from . import visitor


class PrintVisitor:
    @visitor.on('node')
    def visit(self, node, tabs):
        pass

    @visitor.when(ast.ProgramNode)
    def visit(self, node, tabs):
        ans = 'Program\n' + self.visit(node.expr, tabs+1)
        return ans

    @visitor.when(ast.BinaryOperatorNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + '<expr> '+ node.__class__.__name__ +' <expr>\n' + self.visit(node.left, tabs +1) + '\n' + self.visit(node.right, tabs + 1)
        return ans

    @visitor.when(ast.UnaryOperator)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + node.__class__.__name__ +' <expr>\n' + self.visit(node.expr, tabs +1)
        return ans

    @visitor.when(ast.LetInNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + 'let <declaration_list> in <expr>'
        for declaration in node.declaration_list:
            ans += '\n' + self.visit(declaration, tabs + 1)
        ans+= '\n' + self.visit(node.expr, tabs + 1)
        return ans

    @visitor.when(ast.BlockNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + '{ <expression_list> }'
        for expr in node.expr_list:
            ans+= '\n' + self.visit(expr, tabs + 1)
        return ans

    @visitor.when(ast.AssignNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + '<var> <- <expr>'
        ans += '\n' + '\t' * (tabs + 1) + '\__' + 'var: ' + node.idx_token.text_token
        ans += '\n' + self.visit(node.expr, tabs+1)
        return ans

    @visitor.when(ast.IntegerNode)
    def visit(self, node, tabs):
        return '\t' * tabs + '\__' + 'num: ' + node.integer_token.text_token

    @visitor.when(ast.VariableNode)
    def visit(self, node, tabs):
        return '\t' * tabs + '\__' + 'var: '+ node.idx_token.text_token

    @visitor.when(ast.PrintIntegerNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + 'print(<expr>)'
        ans += '\n' + self.visit(node.expr, tabs + 1)
        return ans

    @visitor.when(ast.PrintStringNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + 'print(<string>)'
        ans += '\n' + '\t' * (tabs + 1) + '\__' + node.string_token.text_token
        return ans

    @visitor.when(ast.ScanNode)
    def visit(self, node, tabs):
        ans = '\t' * tabs + '\__' + 'scan()'
        return ans

    @visitor.when(ast.DeclarationNode)
    def visit(self, node, tabs):
        if node.expr is None:
            ans = '\t' * tabs + '\__' + '<id> '
            ans += '\n' + '\t' * (tabs + 1) + '\__' + 'id: ' + node.idx_token.text_token
        else:
            ans = '\t' * tabs + '\__' + '<id> <- <expr>'
            ans += '\n' + '\t' * (tabs + 1) + '\__' + 'id: ' + node.idx_token.text_token
            ans += '\n' + self.visit(node.expr, tabs+1)
        return ans
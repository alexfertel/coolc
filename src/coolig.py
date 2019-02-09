from collections import defaultdict
import coolast as ast
import visitor


class InheritanceGraphVisitor:
    """
    - The graph must be a tree.
    - 'Object' is the root of the tree.
    - It is an error to inherit from 'String', 'Int' or 'Bool' (Redefinition of builtin classes is checked in cooltypes)
    """

    def __init__(self, types):
        self.types = types
        self.edges = []
        self.adjacency_dict = None

    # Sort of DFS to check for cycles.
    def check_graph(self, errors):
        # Testing purposes only
        # self.adjacency_dict["Object"].append("Object")  # Passed
        # self.adjacency_dict["String"].append("Temp")  # Passed

        def dfs(node):
            visited.append(node)
            # print(node, visited)
            valid = 1
            for child in self.adjacency_dict[node]:
                if node in sealed_types:
                    errors.append(f"Type <{child}> inherits from <{node}>, which is sealed in Cool!")
                    valid &= 0

                if child in visited:
                    errors.append(f"There is a cycle containing <{child}>!")
                    return 0
                valid &= dfs(child)
            return valid

        visited = []
        sealed_types = ['Int', 'Bool', 'String']

        return dfs("Object")

    def build_adjacency_dict(self):
        result = defaultdict(list)
        for a, b in self.reversed_edges():
            result[a].append(b)
        return result

    def reversed_edges(self):
        return [(b, a) for a, b in self.edges if b is not None]

    @visitor.on('node')
    def visit(self, node, tabs):
        pass

    @visitor.when(ast.Program)
    def visit(self, node: ast.Program):
        for klass in node.classes:
            self.visit(klass)

        self.adjacency_dict = self.build_adjacency_dict()
        return self.adjacency_dict

    @visitor.when(ast.Class)
    def visit(self, node: ast.Class):
        self.edges.append((node.name, node.parent))

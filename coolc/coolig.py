from collections import defaultdict
from . import coolast as ast
from . import visitor


class InheritanceGraphVisitor:
    """
    - The graph must be a tree.
    - 'Object' is the root of the tree.
    - It is an error to inherit from 'String', 'Int' or 'Bool' (Redefinition of builtin classes is checked in cooltypes)
    """

    def __init__(self, class_list):
        self.__class_list = class_list
        # self.edges = []
        self.__adjacency_dict = {}
        self.__build_adjacency_dict()

    # Sort of DFS to check for cycles.
    def check_graph(self, errors):
        # Testing purposes only
        # self.adjacency_dict["Object"].append("Object")  # Passed
        # self.adjacency_dict["String"].append("Temp")  # Passed

        def dfs(node):
            visited.append(node)
            valid = 1
            for child in self.__adjacency_dict[node]:
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

        return dfs("Object") & self.__visite_all(dfs, visited)

    def __build_adjacency_dict(self):
        for klass in self.__class_list:
            if klass.parent is not None:
                if self.__adjacency_dict.get(klass.parent) is None:
                    self.__adjacency_dict[klass.parent] = []
                if self.__adjacency_dict.get(klass.name) is None:
                    self.__adjacency_dict[klass.name] = []
                self.__adjacency_dict[klass.parent].append(klass.name)

    def __visite_all(self, dfs, visited: list) -> bool:
        valid = 1
        for klass in self.__class_list:
            if klass.name not in visited:
                valid &= dfs(klass.name)
        return valid

def is_valid_unary_operation(operation):
    return operation in ["~", "not"]


def is_valid_binary_operation(operation):
    return operation in ["+", "-", "*", "/", "<", "<=", "="]


def get_operation(operation):
    if operation is None or not isinstance(operation, str):
        return None

    operation = operation.upper()
    if operation == "PLUS":
        return "+"
    elif operation == "MINUS":
        return "-"
    elif operation == "TIMES":
        return "*"
    elif operation == "DIVIDE":
        return "/"
    elif operation == "LTHAN":
        return "<"
    elif operation == "LTEQ":
        return "<="
    elif operation == "EQUALS":
        return "="
    elif operation == "NOT":
        return "not"
    elif operation == "INT_COMP":
        return "~"
    else:
        return None


class void:
    """
    Type representing the default *void* type.
    """

    def __str__(self):
        return "void"

    def __repr__(self):
        return str(self)

    def __eq__(self, other):
        return str(self) == str(other)


def default(t):
    """
    :returns the default value for type t
    :param t: string
    :return: 0 | "" | "false" | void
    """
    if t == "Integer":
        return 0
    elif t == "String":
        return ""
    elif t == "Bool":
        return "false"
    else:
        return void()

# Output error template
def error_template():
    errored = "Compiler coolc\n"  # compiler name and version
    errored += ""  # copyright line, no clue of what to write here


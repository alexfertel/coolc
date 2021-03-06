import sys
import coolex
import cooljack
import cooltypes
import coolig


def main():
    # TODO: Setup pipeline: coolex => cooljack => semantic visitor => cool-cil visitor => cil-mips generator
    # coolex => cooljack => cooltypes => coolig => semantic visitor => cool-cil visitor => cil-mips generator

    # Get all .cl files
    programs = sys.argv[1:]

    # Initialize the master program source code string.
    cool_program_code = ""

    # Check all programs have the *.cl extension.
    for program in programs:
        if not str(program).endswith(".cl"):
            print("Cool program files must end with a \`.cl\` extension.\r\n")
            exit(1)

    # Read all program source codes and store them in memory.
    for program in programs:
        try:
            with open(program, encoding="utf-8") as file:
                cool_program_code += file.read()
        except (IOError, FileNotFoundError):
            print(f'Error! File "{program}" was not found. Are you sure the file exists?')
        except Exception:
            print("An unexpected error occurred!")

    # Lexing
    lexer = coolex.Coolex()
    lexer.build()
    lexer.input(cool_program_code)
    for token in lexer:
        print(token)

    # Parsing
    parser = cooljack.CoolJack(lexer=lexer)
    parser.build()
    ast = parser.parse(cool_program_code)
    print(ast.clsname)

    # Install Types
    ast_with_builtins = cooltypes.TypesVisitor.add_builtins(ast)

    # Semantic Analysis
    types_discoverer = cooltypes.TypesVisitor()
    errors = []

    types_validity = types_discoverer.visit(ast_with_builtins, errors)

    if not types_validity:
        print("Something went wrong when discovering types!")
        for error in errors:
            print(error)
        exit()
    else:
        print("Correctly visited all types, no semantic problems with this pass!")

    print(f'This program types are: {types_discoverer.types.keys()}')

    graph_handler = coolig.InheritanceGraphVisitor(types_discoverer.types.keys())
    graph = graph_handler.visit(ast_with_builtins)

    print(f'Inheritance Graph: {graph}')

    errors.clear()
    valid = graph_handler.check_graph(errors)
    if not valid:
        for error in errors:
            print(error)
    else:
        print("Type Inheritance Graph is semantically correct!")


if __name__ == '__main__':
    main()

import sys
import coolex
import cooljack


def main():
    # TODO: Setup pipeline: coolex => cooljack => semantic visitor => cool-cil visitor => cil-mips generator

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
    parse_result = parser.parse(cool_program_code)
    print(parse_result)


if __name__ == '__main__':
    main()

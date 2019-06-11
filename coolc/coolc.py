from . import coolex
from . import cooljack
from . import cooltypes
from . import coolig
from . import utils
from . import cooltypecollector
from . import cooltypebuilder


class Compiler:
    def __init__(self, *programs):
        """
        :param *programs: The .cl files to compile.
        """
        # TODO: Setup pipeline: coolex => cooljack => semantic visitor => cool-cil visitor => cil-mips generator
        # coolex => cooljack => cooltypes => coolig => semantic visitor => cool-cil visitor => cil-mips generator

        # Initialize the master program source code string and initial properties.
        self.cool_program_code = ""
        self.lexer = None
        self.parser = None
        self.ast = None

        # Check that all programs have the *.cl extension.
        for program in programs:
            if not str(program).endswith(".cl"):
                error = "Cool program files must end with a `.cl` extension.\r\n"
                print(utils.error_template())
                print(error)
                exit(1)

        # Read all program source codes and store them in memory.
        for program in programs:
            try:
                with open(program, encoding="utf-8") as file:
                    self.cool_program_code += file.read()
            except (IOError, FileNotFoundError):
                error = f"(0,0) - CompilerError: File `{program}` was not found. Are you sure the file exists?"
                # print(f'Error! File "{program}" was not found. Are you sure the file exists?')
                print(utils.error_template())
                print(error)
            except Exception:
                print("An unexpected error occurred!")

        # Setup pipeline
        self.steps = [
            self.lexing,
            self.parsing,
            self.semantics
        ]

    def compile(self):
        for step in self.steps:
            step()

    def lexing(self):
        # Lexing
        self.lexer = coolex.Coolex()
        self.lexer.build()
        self.lexer.input(self.cool_program_code)
        for token in self.lexer:
            print(token)
        if self.lexer.error_list:
            print(utils.error_template())
            for error in self.lexer.error_list:
                print(error)
            exit(1)
        else:
            print("Completed lexing!")

    def parsing(self):
        # Parsing
        self.parser = cooljack.CoolJack(lexer=self.lexer)
        self.parser.build()
        self.ast = self.parser.parse(self.cool_program_code)
        if self.parser.error_list:
            print(utils.error_template())
            for error in self.parser.error_list:
                print(error)
            exit(1)
        else:
            print("Completed parsing!")
        print(self.ast.clsname)

    def semantics(self):
        type_collector = cooltypecollector.TypeCollectorVisitor()
        type_collector.visit(self.ast)

        errors = type_collector.get_errors()

        if len(errors) > 0:
            print("Something went wrong when discovering types!")
            for error in errors:
                print(error)
            exit(1)
        else:
            print("Correctly visited all types, no semantic problems with this pass!")

        type_builder = cooltypebuilder.TypeBuilderVisitor(
            type_collector.get_scope())
        type_builder.visit(self.ast)

        errors = type_builder.get_errors()

        if len(errors) > 0:
            print("Something went wrong when building types!")
            for error in errors:
                print(error)
            exit(1)
        else:
            print("Correctly builder all types, no semantic problems with this pass!")

        print(
            f'This program types are: {type_builder.get_scope().get_types_dict().keys()}')

        graph_handler = coolig.InheritanceGraphVisitor(
            type_builder.get_scope().get_types_dict().values())

        errors.clear()
        valid = graph_handler.check_graph(errors)
        if not valid:
            for error in errors:
                print(error)
            exit(1)
        else:
            print("Type Inheritance Graph is semantically correct!")

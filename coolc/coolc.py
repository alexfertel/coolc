from . import coolex
from . import cooljack
from . import cooltypes
from . import coolig
from . import coolutils
from . import cooltypecollector
from . import cooltypebuilder
from . import cool2cil
from . import cil2mips
from . import coolsemantics

from pprint import pprint

class Compiler:
    def __init__(self, program, output):
        """
        :param program: The .cl file to compile.
        """
        # TODO: Setup pipeline: coolex => cooljack => semantic visitor => cool-cil visitor => cil-mips generator
        # coolex => cooljack => cooltypes => coolig => semantic visitor => cool-cil visitor => cil-mips generator

        # Initialize the source code string and initial properties of the master program.
        self.cool_program_code = ""
        self.lexer = None
        self.parser = None
        self.ast = None
        self.result = []
        self.output = output

        # Check that the program has the *.cl extension
        if not str(program).endswith(".cl"):
            error = "Cool program files must end with a `.cl` extension.\r\n"
            # print(coolutils.error_template())
            # print(error)
            exit(1)


        # Check that all programs have the *.cl extension.
        # for program in programs:
        #     if not str(program).endswith(".cl"):
        #         error = "Cool program files must end with a `.cl` extension.\r\n"
        #         print(coolutils.error_template())
        #         print(error)
        #         exit(1)

        # Read all program source code and store it in memory.
        try:
            with open(program, encoding="utf-8") as file:
                self.cool_program_code += file.read()
        except (IOError, FileNotFoundError):
            error = f"(0,0) - CompilerError: File `{program}` was not found. Are you sure the file exists?"
            # print(f'Error! File "{program}" was not found. Are you sure the file exists?')
            # print(coolutils.error_template())
            # print(error)
        except Exception:
            print("An unexpected error occurred!")

        # Read all program source codes and store them in memory.
        # for program in programs:
        #     try:
        #         with open(program, encoding="utf-8") as file:
        #             self.cool_program_code += file.read()
        #     except (IOError, FileNotFoundError):
        #         error = f"(0,0) - CompilerError: File `{program}` was not found. Are you sure the file exists?"
        #         # print(f'Error! File "{program}" was not found. Are you sure the file exists?')
        #         print(coolutils.error_template())
        #         print(error)
        #     except Exception:
        #         print("An unexpected error occurred!")

        # Setup pipeline
        self.steps = [
            self.lexing,
            self.parsing,
            self.semantics,
            self.code_generation
        ]

    def compile(self):
        for step in self.steps:
            step()

        with open(self.output, 'w') as fd:
            # print(self.result)
            fd.write('\n'.join(self.result))

    def lexing(self):
        # Lexing
        self.lexer = coolex.Coolex()
        self.lexer.build()
        self.lexer.input(self.cool_program_code)
        for token in self.lexer:
            pass
            # print(token)
        if self.lexer.error_list:
            # print(coolutils.error_template())
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
            # print(coolutils.error_template())
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
            # print("Something went wrong when discovering types!")
            for error in errors:
                print(error)
            exit(1)
        else:
            print("Correctly visited all types, no semantic problems with this pass!")
        scope = type_collector.get_scope()
        type_builder = cooltypebuilder.TypeBuilderVisitor(scope)
        type_builder.visit(self.ast)

        errors = type_builder.get_errors()

        if len(errors) > 0:
            # print("Something went wrong when building types!")
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

        errors.clear()
        checksemantic = coolsemantics.SemanticVisitor(scope)
        valid = checksemantic.visit(self.ast, errors)

        if not valid:
            for error in errors:
                print(error)
            exit(1)
        else:
            print('Done!')

    def code_generation(self):
        cil_visitor = cool2cil.Cool2CilVisitor()
        cil_visitor.visit(self.ast)

        mips_visitor = cil2mips.Cil2MipsVisitor(cil_visitor.context)
        mips_visitor.visit(cil_visitor.result)
        
        self.result = mips_visitor.dotdata + mips_visitor.dotcode
        pprint(self.result)

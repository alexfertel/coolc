import ply.lex as lex
from ply.lex import TOKEN


class Coolex:
    def __init__(self):
        self.lexer = None  # ply lexer instance
        self.tokens = ()  # ply tokens collection
        self.reserved = {}  # ply reserved keywords map
        self.last_token = None  # last returned token

    # ###################################### ITERATION PROTOCOL ############################################

    def __iter__(self):
        return self

    def __next__(self):
        t = self.token()
        if t is None:
            raise StopIteration
        return t

    def next(self):
        return self.__next__()

    # ############################################## API ###################################################
    def build(self, **kwargs):
        # Expose the reserved map and tokens tuple to the class scope for ply.lex
        self.reserved = self.cool_reserved.keys()
        self.tokens = self.tokens_collection + tuple(self.cool_reserved.values())

        # Build internal ply.lex instance
        self.lexer = lex.lex(module=self, **kwargs)

    def input(self, source_code: str):
        """
        Run lexical analysis on a given COOL program source code string.
        :param source_code: COOL program source code as a string.
        :return: None.
        """
        if self.lexer is None:
            raise Exception("Please, build the lexer first. 'lexer = Coolex().build()', then 'lexer.input("
                            "source_code)'.")

        self.lexer.input(source_code)

    def token(self):
        """
        Advanced the lexers tokens tape one place and returns the current token.
        :side-effects: Modifies self.last_token.
        :return: Token.
        """
        if self.lexer is None:
            raise Exception("Please, build the lexer first. 'lexer = Coolex().build()', then 'lexer.input("
                            "source_code)', finally 'for i in lexer: dosomething()'.")

        self.last_token = self.lexer.token()
        return self.last_token

    def clone_ply_lexer(self):
        """
        Clones the internal PLY's lex-generated lexer instance. Returns a new copy.
        :return: PLY's lex-generated lexer clone.
        """
        a_clone = self.lexer.clone()
        return a_clone

    @staticmethod
    def test(program_source_code: str):
        """
        Given a cool program source code string try to run lexical analysis on it and return all tokens as an iterator.
        :param program_source_code: String.
        :return: Iterator.
        """
        temp_lexer = Coolex()
        temp_lexer.input(program_source_code)
        iter_token_stream = iter([some_token for some_token in temp_lexer])
        del temp_lexer
        return iter_token_stream

    # ######################################################################################################
    # ######################################## COOL DEFINITION #############################################

    @property
    def tokens_collection(self):
        """
        COOL Syntax Tokens.
        :return: Tuple.
        """
        return (
            # Identifiers
            "ID", "TYPE",
            # Primitive Types
            "INTEGER", "STRING", "BOOLEAN",
            # Literals
            "LPAREN", "RPAREN", "LBRACE", "RBRACE", "COLON", "COMMA", "DOT", "SEMICOLON", "AT",
            # Operators
            "PLUS", "MINUS", "MULTIPLY", "DIVIDE", "EQ", "LT", "LTEQ", "ASSIGN", "INT_COMP",  # "NOT",
            # Special Operators
            "ARROW"
        )

    @property
    def cool_reserved(self):
        """
        Map of COOL keywords.
        :return: dict.
        """

        # Maybe SELF_TYPE should also be here
        return {
            "case": "CASE",
            "class": "CLASS",
            "else": "ELSE",
            "esac": "ESAC",
            "if": "IF",
            "fi": "FI",
            "in": "IN",
            "inherits": "INHERITS",
            "isvoid": "ISVOID",
            "let": "LET",
            "loop": "LOOP",
            "pool": "POOL",
            "new": "NEW",
            "of": "OF",
            "self": "SELF",
            "then": "THEN",
            "while": "WHILE",
            "not": "NOT"  # This should be in the operator tokens, but i didn't find a clean way to include it there
        }

    # Ignore rule for single line comments
    t_ignore_SINGLE_LINE_COMMENT = r"\-\-[^\n]*"

    ###
    # SIMPLE TOKENS
    t_LPAREN = r'\('  # (
    t_RPAREN = r'\)'  # )
    t_LBRACE = r'\{'  # {
    t_RBRACE = r'\}'  # }
    t_COLON = r'\:'  # :
    t_COMMA = r'\,'  # ,
    t_DOT = r'\.'  # .
    t_SEMICOLON = r'\;'  # ;
    t_AT = r'\@'  # @
    t_MULTIPLY = r'\*'  # *
    t_DIVIDE = r'\/'  # /
    t_PLUS = r'\+'  # +
    t_MINUS = r'\-'  # -
    t_INT_COMP = r'~'  # ~
    t_LT = r'\<'  # <
    t_EQ = r'\='  # =
    t_LTEQ = r'\<\='  # <=
    t_ASSIGN = r'\<\-'  # <-
    # t_NOT = r'not'  # not
    t_ARROW = r'\=\>'  # =>

    # @TOKEN(r"not")
    # def t_NOT(self, token):
    #     """
    #     This rule is needed so not is not recognized as an identifier
    #     """
    #     return token

    @TOKEN(r"(true|false)")
    def t_BOOLEAN(self, token):
        """
        The Bool Primitive Type Token Rule.
        """
        token.value = True if token.value == "true" else False
        return token

    @TOKEN(r"\d+")
    def t_INTEGER(self, token):
        """
        The Integer Primitive Type Token Rule.
        """
        token.value = int(token.value)
        return token

    @TOKEN(r"[A-Z][a-zA-Z_0-9]*")
    def t_TYPE(self, token):
        """
        The Type Token Rule.
        """
        token.type = self.cool_reserved.get(token.value, 'TYPE')
        return token

    @TOKEN(r"[a-z_][a-zA-Z_0-9]*")
    def t_ID(self, token):
        """
        The Identifier Token Rule.
        """
        # Check for cool_reserved words
        token.type = self.cool_reserved.get(token.value, 'ID')
        return token

    @TOKEN(r"\n+")
    def t_newline(self, token):
        """
        The Newline Token Rule.
        """
        token.lexer.lineno += len(token.value)

    # Ignore Whitespace Character Rule
    t_ignore = ' \t\r\f'

    # ####################################### STRINGS AND COMMENTS #########################################

    # LEXER STATES
    @property
    def states(self):
        return (
            ("STRING", "exclusive"),
            ("COMMENT", "exclusive")
        )

    ###
    # THE STRING STATE
    @TOKEN(r"\"")
    def t_start_string(self, token):
        token.lexer.push_state("STRING")
        token.lexer.string_backslashed = False
        token.lexer.stringbuf = ""

    @TOKEN(r"\n")
    def t_STRING_newline(self, token):
        token.lexer.lineno += 1
        if not token.lexer.string_backslashed:
            print("String newline not escaped")
            token.lexer.skip(1)
        else:
            token.lexer.string_backslashed = False

    @TOKEN(r"\"")
    def t_STRING_end(self, token):
        if not token.lexer.string_backslashed:
            token.lexer.pop_state()
            token.value = token.lexer.stringbuf
            token.type = "STRING"
            return token
        else:
            token.lexer.stringbuf += '"'
            token.lexer.string_backslashed = False

    @TOKEN(r"[^\n]")
    def t_STRING_anything(self, token):
        if token.lexer.string_backslashed:
            if token.value == 'b':
                token.lexer.stringbuf += '\b'
            elif token.value == 't':
                token.lexer.stringbuf += '\t'
            elif token.value == 'n':
                token.lexer.stringbuf += '\n'
            elif token.value == 'f':
                token.lexer.stringbuf += '\f'
            elif token.value == '\\':
                token.lexer.stringbuf += '\\'
            else:
                token.lexer.stringbuf += token.value
            token.lexer.string_backslashed = False
        else:
            if token.value != '\\':
                token.lexer.stringbuf += token.value
            else:
                token.lexer.string_backslashed = True

    # STRING ignored characters
    t_STRING_ignore = ''

    # STRING error handler
    def t_STRING_error(self, token):
        print("Illegal character! Line: {0}, character: {1}".format(token.lineno, token.value[0]))
        token.lexer.skip(1)

    # ################# #
    # THE COMMENT STATE #
    @TOKEN(r"\(\*")
    def t_start_comment(self, token):
        token.lexer.push_state("COMMENT")
        token.lexer.comment_count = 0

    @TOKEN(r"\(\*")
    def t_COMMENT_startanother(self, t):
        t.lexer.comment_count += 1

    @TOKEN(r"\*\)")
    def t_COMMENT_end(self, token):
        if token.lexer.comment_count == 0:
            token.lexer.pop_state()
        else:
            token.lexer.comment_count -= 1

    # COMMENT ignored characters
    t_COMMENT_ignore = ''

    # COMMENT error handler
    def t_COMMENT_error(self, token):
        token.lexer.skip(1)

    def t_error(self, token):
        """
        Error Handling and Reporting Rule.
        """
        print("Illegal character! Line: {0}, character: {1}".format(token.lineno, token.value[0]))
        token.lexer.skip(1)

    # ##################################### END OF LEXICAL ANALYSIS ########################################
    # ######################################################################################################


def main():
    import sys

    print(len(sys.argv))

    if len(sys.argv) != 2:
        print("Usage: python3 coolex.py program.cl")
        exit()
    elif not str(sys.argv[1]).endswith(".cl"):
        print("Cool program source code files must end with .cl extension.")
        print("Usage: python3 coolex.py program.cl")
        exit()

    input_file = sys.argv[1]
    with open(input_file, encoding="utf-8") as file:
        cool_program_code = file.read()

    lexer = Coolex()
    lexer.build()
    lexer.input(cool_program_code)
    for token in lexer:
        print(token)


if __name__ == "__main__":
    main()

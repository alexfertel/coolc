from .ply.lex import lex
from .ply.lex import TOKEN


class Coolex:
    def __init__(self):
        pass

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
            "PLUS", "MINUS", "MULTIPLY", "DIVIDE", "EQ", "LT", "LTEQ", "ASSIGN", "INT_COMP", "NOT",
            # Special Operators
            "ARROW"
        )

    @property
    def reserved(self):
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
            "while": "WHILE"
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
    t_NOT = r'not'  # not
    t_ARROW = r'\=\>'  # =>

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
        token.type = self.reserved.get(token.value, 'TYPE')
        return token

    @TOKEN(r"[a-z_][a-zA-Z_0-9]*")
    def t_ID(self, token):
        """
        The Identifier Token Rule.
        """
        # Check for reserved words
        token.type = self.reserved.get(token.value, 'ID')
        return token

    @TOKEN(r"\n+")
    def t_newline(self, token):
        """
        The Newline Token Rule.
        """
        token.lexer.lineno += len(token.value)

    # Ignore Whitespace Character Rule
    t_ignore = ' \t\r\f'


def main():
    print('Hi!')


if __name__ == '__main__':
    main()

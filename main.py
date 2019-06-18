#!/usr/bin/python3
import sys
from coolc import Compiler

def main():
    program = sys.argv[1]
    output = sys.argv[2]
    Compiler(program, output).compile()

if __name__ == '__main__':
    main()

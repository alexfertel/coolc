#!/usr/bin/python3
import sys
from coolc.coolc import Compiler

def main():
    programs = sys.argv[1:]
    Compiler(*programs).compile()

if __name__ == '__main__':
    main()

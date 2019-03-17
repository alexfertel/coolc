# coolc

## Intro

This project is a `COOL`, Classroom Object Oriented Language, to `MIPS` compiler written in [Python](http://python.org).

This is *not* a thorough implementation for production or commercial use, but a class project for the course on Compilers of University of Havana. Use at your own risk.

## Getting Started

You can compile a `.cl` program with `coolc` using the [docker](http://docker.com) image or just running `main.py`.

### Using Docker

There is a [Dockerfile](Dockerfile) in the project root which specifies how the coolc image is built.

To build this image correctly just run:

```bash
$ chmod 755 main.py
$ ./build.sh
Image `alexfertel/coolc:latest` built successfully!
```

It just copies most of this project to a `/coolc` directory into the build, sets up 4 volumes and declares an entrypoint with default arguments (a `hello_world.cl`, which surprisingly is COOL's **Hello, World!**). For those who aren't versed in `docker`, this allows to do the following:

```bash
$ docker run --rm -v `/absolute/path/to/coolc`/cool:/coolc/cool alexfertel/coolc
Hello, World!
```

This will compile the **Hello, World!** of COOL. On the other hand, say we want to compile a custom COOL program we wrote. To compile it and see the output, we copy the program to our `cool` folder and run:

```bash
$ docker run --rm -v `/absolute/path/to/coolc`/cool:/coolc/cool alexfertel/coolc cool/`program_name`
See what I did there? 'cool/program_name'
```

or maybe just mount the folder containing our program, like so:

```bash
$ docker run --rm -v `/absolute/path/to/program/parent`:/coolc/cool alexfertel/coolc cool/`program_name`
Some docker knowledgeable person wrote this ;).
```

### Using Vanilla Python

Maybe all that docker stuff is not for you, not a problem, if we want to compile program `hi.cl`, just run:

```bash
$ chmod 755 main.py
$ ./main.py `/path/to/hi.cl`
Hi!
```

## How it works

`coolc` is based heavily in the **visitor** pattern, it makes lexing and parsing using [ply](https://en.wikipedia.org/wiki/PLY_(Python_Lex-Yacc)), \[N\] *visits* to the *AST* (Abstract Syntax Tree) and finally compiles `CIL`'s structure (another **AST**) to `MIPS`.

## Structure

The project is structured as follows:

    coolc/
    ├── mips/
    ├── cil/
    │    ├── ast/
    │    └── code/
    ├── cool/
    │    ├── ast/
    │    └── code/
    ├── tests/
    ├── coolc/
    │    ├── ply/
    │    │    ├── __init__.py
    │    │    ├── lex.py
    │    │    └── yacc.py
    │    ├── __init__.py
    │    ├── cil2mips.py
    │    ├── cilast.py
    │    ├── cilemitter.py
    │    ├── cilor.py
    │    ├── cool2cil.py
    │    ├── coolast.py
    │    ├── coolc.py
    │    ├── coolex.py
    │    ├── coolig.py
    │    ├── cooljack.py
    │    ├── coolor.py
    │    ├── coolpainter.py
    │    ├── coolsemantics.py
    │    ├── cooltypebuilder.py
    │    ├── cooltypecollector.py
    │    ├── cooltypes.py
    │    ├── coolutils.py
    │    ├── genericvisitor.py
    │    ├── parser.out
    │    ├── parsetab.py
    │    ├── scope.py
    │    ├── test.py
    │    └── visitor.py
    ├── .dockerignore
    ├── .gitignore
    ├── build.sh
    ├── Dockerfile
    ├── grammar.md
    ├── main.py
    └── README.md

The idea behind this structure is to use `coolc` just for the compiling phase you want. For example, lets say there's a `cil` *AST* you obtained from a `.cl` file, but couldn't properly emit the `mips` code for that *AST*, you place that ast builder in the `cil/ast` folder as an executable script and use the `api` to emit the corresponding `mips` code.

We will discuss only the most important files.

* `main.py`

    Entrypoint of the application and thus of the Dockerfile. It just runs compilation for the provided `.cl` files.

* `grammar.md`

    Grammar specification used for this compiler. It should be equivalent to **COOL**.

* `coolc/coolc.py`

    Exposes the `Compiler` class, which in turn exposes the *API* of this compiler.

* `coolc/coolex.py`

    Specifies the **lexing** rules for **COOL** using [ply](https://en.wikipedia.org/wiki/PLY_(Python_Lex-Yacc)).

* `coolc/cooljack.py`

    Specifies the **parsing** rules for **COOL** using [ply](https://en.wikipedia.org/wiki/PLY_(Python_Lex-Yacc)).

* `*ast.py`

    Corresponding definition of the *AST*s of **COOL** and **CIL**.

* `*or.py`

    Visitor generators for each corresponding *AST*s.

* `coolc/coolig.py`

    Inheritance Graph builder and checker.

* `*types*.py`

    Type-related semantic checking files.

* `coolc/coolsemantics.py`

    Semantic checking visitor.

* `coolc/cool2cil.py`

    Converts a **COOL** *AST* into a **CIL** *AST*.

* `coolc/cil2mips.py`

    Converts a **CIL** *AST* into **MIPS** code.


# coolc

## Intro

This project is a `COOL`, Classroom Object Oriented Language, to `MIPS` compiler written in [Python](http://python.org).

This is *not* a thorough implementation for production or commercial use, but a class project for the course on Compilers of University of Havana. Use at your own risk.

## Getting Started

You can compile a `.cl` program with `coolc` using the [docker](http://docker.com) image or just running `main.py`.

### Using Docker

There is a [Dockerfile](Dockerfile) in the project root which specifies how the coolc image is built.

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

`coolc` is based heavily in the **visitor** pattern, it makes lexing and parsing using [ply](link to ply), makes [X] *visits* to the *AST* (Abstract Syntax Tree) and finally compiles `CIL`'s structure (another **AST**) to `MIPS`.

## Structure

## API

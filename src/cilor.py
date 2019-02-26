#!/home/alex/anaconda3/bin/python3
import os.path
import fileinput
import sys

assert os.path.isfile('cilast.py')

names = []
for line in fileinput.input('cilast.py'):
    if line.startswith('class'):
        klass = line.split()[1]
        name = klass.split('(')[0] if '(' in klass else klass.split(':')[0]
        names.append(name)

generated = 'import cilast as ast\n'
generated += 'import visitor\n\n\n'
generated += 'class GenericVisitor:\n' if len(sys.argv) == 1 else f'class {sys.argv[1]}Visitor:\n'
generated += "\t@visitor.on('node')\n"
generated += "\tdef visit(self, node):\n"
generated += "\t\tpass\n\n"

for name in names:
    generated += f'\t@visitor.when(ast.{name})\n'
    generated += f'\tdef visit(self, node: ast.{name}):\n'
    generated += f'\t\tpass\n\n'

filename = f'{sys.argv[2]}.py' if len(sys.argv) == 3 else 'genericcilvisitor.py'
with open(filename, 'w') as fd:
    fd.write(generated)

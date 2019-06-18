.data
Main: 
.word 0
.word Main_ctr
.word Main_type_name
.word Main_copy
.word Main_abort
.word Main_main

# Program
.text

# .data:

# .types:

# Type

# .code:
f0:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
f1:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Dummy
li $a0, 1

# Assign
sw $a0, 0($sp)

# Dummy
li $a0, 2

# Assign
sw $a0, -4($sp)

# Dummy
li $a0, 3

# Assign
sw $a0, -8($sp)

# Dummy
li $a0, 4

# Allocate
la $a0, Main
lw $a0, 4($a0)
li $v0, 9
syscall 

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# Call
jal Main_ctr

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# VCall
la $a0, Main
jal f4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
f2:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Dummy
li $a0, 1

# Assign
sw $a0, 0($sp)

# Dummy
li $a0, 2

# Assign
sw $a0, -4($sp)

# Dummy
li $a0, 3

# Assign
sw $a0, -8($sp)

# Dummy
li $a0, 4

# Allocate
la $a0, Main
lw $a0, 4($a0)
li $v0, 9
syscall 

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# Call
jal Main_ctr

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# VCall
la $a0, Main
jal f4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
f3:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Dummy
li $a0, 1

# Assign
sw $a0, 0($sp)

# Dummy
li $a0, 2

# Assign
sw $a0, -4($sp)

# Dummy
li $a0, 3

# Assign
sw $a0, -8($sp)

# Dummy
li $a0, 4

# Allocate
la $a0, Main
lw $a0, 4($a0)
li $v0, 9
syscall 

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# Call
jal Main_ctr

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# VCall
la $a0, Main
jal f4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
f4:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Dummy
li $a0, 1

# Assign
sw $a0, 0($sp)

# Dummy
li $a0, 2

# Assign
sw $a0, -4($sp)

# Dummy
li $a0, 3

# Assign
sw $a0, -8($sp)

# Dummy
li $a0, 4

# Allocate
la $a0, Main
lw $a0, 4($a0)
li $v0, 9
syscall 

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# Call
jal Main_ctr

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# VCall
la $a0, Main
jal f4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
main:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Dummy
li $a0, 1

# Assign
sw $a0, 0($sp)

# Dummy
li $a0, 2

# Assign
sw $a0, -4($sp)

# Dummy
li $a0, 3

# Assign
sw $a0, -8($sp)

# Dummy
li $a0, 4

# Allocate
la $a0, Main
lw $a0, 4($a0)
li $v0, 9
syscall 

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# Call
jal Main_ctr

# Arg
sw $a0, 0($sp)
addiu $sp, $sp, -4

# VCall
la $a0, Main
jal f4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra

.data
Main: .word 0
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
Main_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_type_name:
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
lw $a0, 12($a0)
jal $a0

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_copy:
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
lw $a0, 12($a0)
jal $a0

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_abort:
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
lw $a0, 12($a0)
jal $a0

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_main:
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
lw $a0, 12($a0)
jal $a0

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
entry:
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
lw $a0, 12($a0)
jal $a0

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
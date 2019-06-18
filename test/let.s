.data
Main: .word 0
.word Main_ctr
.word Main_type_name
.word Main_copy
.word Main_abort
.word Main_main
.text
Main_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_type_name:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_copy:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_abort:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Main_main:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
entry:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
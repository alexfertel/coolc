.data
Main: .word 0
.word f0
.word f1
.text
f0:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
f1:
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
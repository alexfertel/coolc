.data
label0:
.word 4
.word label30
.word label31
.word label32
label30: .asciiz "Object"
label31:
.word label1
.word label2
.word label3
.word label4
label32:
.word label0
.word 0
label5:
.word 4
.word label33
.word label34
.word label35
label33: .asciiz "IO"
label34:
.word label6
.word label2
.word label3
.word label4
.word label7
.word label8
.word label9
.word label10
label35:
.word label5
.word label0
.word 0
label37: .asciiz "Null reference exception None"
label11:
.word 8
.word label38
.word label39
.word label40
label38: .asciiz "Int"
label39:
.word label12
.word label2
.word label3
.word label4
label40:
.word label11
.word label0
.word 0
label42: .asciiz "Null reference exception None"
label13:
.word 8
.word label43
.word label44
.word label45
label43: .asciiz "Bool"
label44:
.word label14
.word label2
.word label3
.word label4
label45:
.word label13
.word label0
.word 0
label47: .asciiz "Null reference exception None"
label15:
.word 12
.word label48
.word label49
.word label50
label48: .asciiz "String"
label49:
.word label16
.word label2
.word label3
.word label4
.word label17
.word label18
.word label19
label50:
.word label15
.word label0
.word 0
label52: .asciiz "Null reference exception None"
label20:
.word 4
.word label53
.word label54
.word label55
label53: .asciiz "Main"
label54:
.word label21
.word label2
.word label3
.word label4
.word label7
.word label8
.word label9
.word label10
.word label22
label55:
.word label20
.word label5
.word label0
.word 0
label57: .asciiz "Null reference exception <type Main 1 .\examples\test.cl>"
label59: .asciiz "Null reference exception <id out_string 5 .\examples\test.cl>"
label61: .asciiz "Null reference exception <id f 5 .\examples\test.cl>"
label63: .asciiz "Null reference exception <id m 5 .\examples\test.cl>"
label65: .asciiz "Null reference exception <id out_string 6 .\examples\test.cl>"
label67: .asciiz "Null reference exception <id f 6 .\examples\test.cl>"
label69: .asciiz "Null reference exception <id m 6 .\examples\test.cl>"
label23:
.word 4
.word label70
.word label71
.word label72
label70: .asciiz "A"
label71:
.word label24
.word label2
.word label3
.word label4
.word label25
.word label26
label72:
.word label23
.word label0
.word 0
label74: .asciiz "Null reference exception <type A 12 .\examples\test.cl>"
label75: .asciiz "A"
label27:
.word 4
.word label76
.word label77
.word label78
label76: .asciiz "B"
label77:
.word label28
.word label2
.word label3
.word label4
.word label29
.word label26
label78:
.word label27
.word label23
.word label0
.word 0
label80: .asciiz "Null reference exception <type B 17 .\examples\test.cl>"
label81: .asciiz "B"
.text
label1:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label6:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
bnez  $t0, label36
li    $v0, 4
la    $a0, label37
syscall
li    $v0, 10
syscall
label36:
sw    $t0, 4($sp)
la    $t0, label0
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label12:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
li    $v0, 9
li    $a0, 8
syscall
la    $a0, label11
sw    $a0, 0($v0)
sw    $t0, 4($v0)
move  $t0, $v0
bnez  $t0, label41
li    $v0, 4
la    $a0, label42
syscall
li    $v0, 10
syscall
label41:
sw    $t0, 4($sp)
la    $t0, label0
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label14:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
li    $v0, 9
li    $a0, 8
syscall
la    $a0, label13
sw    $a0, 0($v0)
sw    $t0, 4($v0)
move  $t0, $v0
bnez  $t0, label46
li    $v0, 4
la    $a0, label47
syscall
li    $v0, 10
syscall
label46:
sw    $t0, 4($sp)
la    $t0, label0
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label16:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
bnez  $t0, label51
li    $v0, 4
la    $a0, label52
syscall
li    $v0, 10
syscall
label51:
sw    $t0, 4($sp)
la    $t0, label0
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label21:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
bnez  $t0, label56
li    $v0, 4
la    $a0, label57
syscall
li    $v0, 10
syscall
label56:
sw    $t0, 4($sp)
la    $t0, label5
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label22:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
addiu $sp, $sp, -4
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
la    $a1, label27
li    $v0, 9
li    $a0, 4
syscall
sw    $a1, 0($v0)
lw    $a1, 8($a1)
lw    $a1, 0($a1)
sw    $v0, 0($sp)
addiu $sp, $sp, -4
jalr  $a1
addiu $sp, $sp, 4
move  $t0, $v0
sw    $t0, 0($fp)
addiu $sp, $sp, -8
lw    $t0, 12($fp)
bnez  $t0, label58
li    $v0, 4
la    $a0, label59
syscall
li    $v0, 10
syscall
label58:
sw    $t0, 4($sp)
lw    $t0, 0($t0)
lw    $t0, 8($t0)
lw    $t0, 16($t0)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t1, 0($fp)
bnez  $t1, label60
li    $v0, 4
la    $a0, label61
syscall
li    $v0, 10
syscall
label60:
sw    $t1, 4($sp)
lw    $t1, 0($t1)
lw    $t1, 8($t1)
lw    $t1, 20($t1)
jalr  $t1
addiu $sp, $sp, 4
move  $t1, $v0
bnez  $t1, label62
li    $v0, 4
la    $a0, label63
syscall
li    $v0, 10
syscall
label62:
sw    $t1, 4($sp)
lw    $t1, 0($t1)
lw    $t1, 8($t1)
lw    $t1, 16($t1)
jalr  $t1
addiu $sp, $sp, 4
move  $t1, $v0
sw    $t1, 8($sp)
jalr  $t0
addiu $sp, $sp, 8
move  $t0, $v0
la    $a1, label23
li    $v0, 9
li    $a0, 4
syscall
sw    $a1, 0($v0)
lw    $a1, 8($a1)
lw    $a1, 0($a1)
sw    $v0, 0($sp)
addiu $sp, $sp, -4
jalr  $a1
addiu $sp, $sp, 4
move  $t0, $v0
sw    $t0, 0($fp)
addiu $sp, $sp, -8
lw    $t0, 12($fp)
bnez  $t0, label64
li    $v0, 4
la    $a0, label65
syscall
li    $v0, 10
syscall
label64:
sw    $t0, 4($sp)
lw    $t0, 0($t0)
lw    $t0, 8($t0)
lw    $t0, 16($t0)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t1, 0($fp)
bnez  $t1, label66
li    $v0, 4
la    $a0, label67
syscall
li    $v0, 10
syscall
label66:
sw    $t1, 4($sp)
lw    $t1, 0($t1)
lw    $t1, 8($t1)
lw    $t1, 20($t1)
jalr  $t1
addiu $sp, $sp, 4
move  $t1, $v0
bnez  $t1, label68
li    $v0, 4
la    $a0, label69
syscall
li    $v0, 10
syscall
label68:
sw    $t1, 4($sp)
lw    $t1, 0($t1)
lw    $t1, 8($t1)
lw    $t1, 16($t1)
jalr  $t1
addiu $sp, $sp, 4
move  $t1, $v0
sw    $t1, 8($sp)
jalr  $t0
addiu $sp, $sp, 8
move  $t0, $v0
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label24:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
bnez  $t0, label73
li    $v0, 4
la    $a0, label74
syscall
li    $v0, 10
syscall
label73:
sw    $t0, 4($sp)
la    $t0, label0
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label25:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
li    $v0, 9
li    $a0, 12
syscall
move  $t0, $v0
la    $a0, label15
sw    $a0, 0($t0)
la    $a0, label75
sw    $a0, 4($t0)
li    $a0, 1
sw    $a0, 8($t0)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label26:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
lw    $a1, 12($fp)
lw    $a1, 0($a1)
li    $v0, 9
lw    $a0, 0($a1)
syscall
sw    $a1, 0($v0)
lw    $a1, 8($a1)
lw    $a1, 0($a1)
sw    $v0, 0($sp)
addiu $sp, $sp, -4
jalr  $a1
addiu $sp, $sp, 4
move  $t0, $v0
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label28:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
addiu $sp, $sp, -4
lw    $t0, 12($fp)
bnez  $t0, label79
li    $v0, 4
la    $a0, label80
syscall
li    $v0, 10
syscall
label79:
sw    $t0, 4($sp)
la    $t0, label23
lw    $t0, 8($t0)
lw    $t0, 0($t0)
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
lw    $t0, 12($fp)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label29:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
sw    $t0, 0($sp)
addiu $sp, $sp, -4
sw    $t1, 0($sp)
addiu $sp, $sp, -4
sw    $t2, 0($sp)
addiu $sp, $sp, -4
sw    $t3, 0($sp)
addiu $sp, $sp, -4
sw    $t4, 0($sp)
addiu $sp, $sp, -4
sw    $t5, 0($sp)
addiu $sp, $sp, -4
sw    $t6, 0($sp)
addiu $sp, $sp, -4
sw    $t7, 0($sp)
addiu $sp, $sp, -4
sw    $t8, 0($sp)
addiu $sp, $sp, -4
sw    $t9, 0($sp)
addiu $sp, $sp, -4
sw    $s0, 0($sp)
addiu $sp, $sp, -4
sw    $s1, 0($sp)
addiu $sp, $sp, -4
sw    $s2, 0($sp)
addiu $sp, $sp, -4
sw    $s3, 0($sp)
addiu $sp, $sp, -4
sw    $s4, 0($sp)
addiu $sp, $sp, -4
sw    $s5, 0($sp)
addiu $sp, $sp, -4
sw    $s6, 0($sp)
addiu $sp, $sp, -4
sw    $s7, 0($sp)
addiu $sp, $sp, -4
li    $v0, 9
li    $a0, 12
syscall
move  $t0, $v0
la    $a0, label15
sw    $a0, 0($t0)
la    $a0, label81
sw    $a0, 4($t0)
li    $a0, 1
sw    $a0, 8($t0)
move  $v0, $t0
addiu $sp, $sp, 4
lw    $s7, 0($sp)
addiu $sp, $sp, 4
lw    $s6, 0($sp)
addiu $sp, $sp, 4
lw    $s5, 0($sp)
addiu $sp, $sp, 4
lw    $s4, 0($sp)
addiu $sp, $sp, 4
lw    $s3, 0($sp)
addiu $sp, $sp, 4
lw    $s2, 0($sp)
addiu $sp, $sp, 4
lw    $s1, 0($sp)
addiu $sp, $sp, 4
lw    $s0, 0($sp)
addiu $sp, $sp, 4
lw    $t9, 0($sp)
addiu $sp, $sp, 4
lw    $t8, 0($sp)
addiu $sp, $sp, 4
lw    $t7, 0($sp)
addiu $sp, $sp, 4
lw    $t6, 0($sp)
addiu $sp, $sp, 4
lw    $t5, 0($sp)
addiu $sp, $sp, 4
lw    $t4, 0($sp)
addiu $sp, $sp, 4
lw    $t3, 0($sp)
addiu $sp, $sp, 4
lw    $t2, 0($sp)
addiu $sp, $sp, 4
lw    $t1, 0($sp)
addiu $sp, $sp, 4
lw    $t0, 0($sp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
.globl main
main:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
addiu $sp, $sp, -4
li    $v0, 9
li    $a0, 4
syscall
move  $t0, $v0
la    $t1, label20
sw    $t1, 0($t0)
lw    $t1, 8($t1)
lw    $t1, 0($t1)
sw    $t0, 0($sp)
addiu $sp, $sp, -4
jalr  $t1
addiu $sp, $sp, 4
move  $t0, $v0
sw    $t0, 4($sp)
la    $t0, label22
jalr  $t0
addiu $sp, $sp, 4
move  $t0, $v0
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label2:
li    $v0, 10
syscall
label3:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
lw    $a3, 12($fp)
lw    $a3, 0($a3)
lw    $a3, 4($a3)
li    $v0, 9
li    $a0, 12
syscall
la    $a0, label15
sw    $a0, 0($v0)
sw    $a3, 4($v0)
li    $a0, 64
sw    $a0, 8($v0)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label4:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
lw    $a1, 12($fp)
lw    $a0, 0($a1)
lw    $a0, 0($a0)
li    $v0, 9
syscall
label82:
addiu $a0, $a0, -4
addu $a3, $a0, $a1
lw    $a2, 0($a3)
addu $a3, $a0, $v0
sw    $a2, 0($a3)
beqz  $a0, label83
b     label82
label83:
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label7:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
li    $v0, 4
lw    $a0, 16($fp)
lw    $a0, 4($a0)
syscall
lw    $v0, 12($fp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label8:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
li    $v0, 1
lw    $a0, 16($fp)
syscall
lw    $v0, 12($fp)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label9:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
li    $v0, 9
li    $a0, 64
syscall
move  $a0, $v0
li    $a1, 64
li    $v0, 8
syscall
move $a3, $a0
li    $v0, 9
li    $a0, 12
syscall
la    $a0, label15
sw    $a0, 0($v0)
sw    $a3, 4($v0)
li    $a0, 64
sw    $a0, 8($v0)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label10:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
li    $v0, 5
syscall
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label17:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
lw    $v0, 12($fp)
lw    $v0, 8($v0)
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label18:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra
label19:
sw    $ra, 0($sp)
addiu $sp, $sp, -4
sw    $fp, 0($sp)
addiu $sp, $sp, -4
move  $fp, $sp
addiu $sp, $sp, 4
lw    $fp, 0($sp)
addiu $sp, $sp, 4
lw    $ra, 0($sp)
jr    $ra

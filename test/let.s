.data
Object: .word 0
.word Main_ctr
.word Main_main
IO: .word 1
.word Main_ctr
.word Main_main
Int: .word 2
.word Main_ctr
.word Main_main
Bool: .word 3
.word Main_ctr
.word Main_main
String: .word 4
.word Main_ctr
.word Main_main
Main: .word 5
.word Main_ctr
.word Main_main

# Program
.text
obj_abort_func:
li $v0, 10
syscall 
sub $sp, $sp, 12
sw $ra, 8($sp)
li $t0, 0
sw $t0, 0($sp)
lw $t0, 4($sp)
lw $t0, 0($t0)
sw $t0, 0($sp)
lw $ra, 8($sp)
lw $a0, 0($sp)
addi $sp, $sp, 12
jr $ra
io_in_int_func:
li $v0, 5
syscall 
move $a0, $v0
jr $ra
io_in_str_func:
li $a1, 1024
li $v0, 8
syscall 
jr $ra
io_out_int_func:
lw $a0, 4($sp)
li $v0, 1
syscall 
jr $ra
io_out_str_func:
lw $a0, 4($sp)
li $v0, 4
syscall 
jr $ra
str_length_func:
lw $a0, 4($sp)
li $a1, 0
length_main_loop:
lb $t1, 0($a0)
beqz $t1, legth_end
addiu $a0, $a0, 1
addiu $a1, $a1, 1
j length_main_loop
length_end:
move $a0, $a1
jr $ra
str_concat_func:
lw $t0, 8($sp)
lw $t1, 12($sp)
sw $t0, 0($sp)
addiu $sp, $sp, -4
jal str_length_func
move $t2, $a0
sw $t1, 0($sp)
addiu $sp, $sp, -4
jal str_length_func
move $t3, $a0
add $a0, $t2, $t3
addiu $a0, $a0, 1
li $v0, 9
syscall 
str_concat_fst_loop:
lb $t6, 0($t0)
beqz $t6, str_concat_fst_loop_end
lb $v0, 0($t0)
addiu $v0, $v0, 1
addiu $t0, $t0, 1
j str_concat_fst_loop
str_concat_fst_loop_end:
str_concat_snd_loop:
lb $t6, 0($t1)
beqz $t6, str_concat_snd_loop_end
lb $v0, 0($t1)
addiu $v0, $v0, 1
addiu $t1, $t1, 1
j str_concat_snd_loop
str_concat_snd_loop_end:
lb $v0, $zero
move $a0, $v0
jr $ra

# Type

# Type

# Type

# Type

# Type

# Type
Object_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Object_abort:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Object_copy:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Object_type_name:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_in_int:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_in_string:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_out_int:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 12
lw $fp, 0($sp)
jr $ra
IO_out_string:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 12
lw $fp, 0($sp)
jr $ra
IO_abort:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_copy:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
IO_type_name:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Int_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# SetAttrib
lw $t0, void
sw $a0, _val_val_val_val($a0)

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Int_abort:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Int_copy:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Int_type_name:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Bool_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# SetAttrib
lw $t0, void
sw $a0, _val_val_val_val($a0)

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Bool_abort:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Bool_copy:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
Bool_type_name:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
String_ctr:
move $fp, $sp
sw $ra, 0($sp)
addiu $sp, $sp, -4

# SetAttrib
lw $t0, void
sw $a0, _val_val_val_val($a0)

# SetAttrib
lw $t0, void
sw $a0, _val_val_val_val($a0)

# Return
jr $ra
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
String_length:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
String_concat:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 12
lw $fp, 0($sp)
jr $ra
String_substr:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 16
lw $fp, 0($sp)
jr $ra
String_abort:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
String_copy:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
String_type_name:
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
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
jal Main_main
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
jal Main_main
lw $ra, 4($sp)
addiu $sp, $sp, 8
lw $fp, 0($sp)
jr $ra
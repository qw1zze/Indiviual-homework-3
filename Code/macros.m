# Macro library

# print string, x - string for printing
.macro print_str (%x)
.data
str: .asciz %x
.text
   push(a0)
   
   li a7 4
   la a0 str
   ecall # print string
   
   pop(a0)
.end_macro

# get string from user, return string in buf
.macro get_str(%buf, %size)
    la a0 %buf
    li a1 %size
    li a7 8
    ecall 
    
    push(s0)
    push(s1)
    push(s2) 
    
    li	s0 '\n'
    la	s1 %buf
next: 
    lb s2 (s1)
    beq s0 s2 replace
    addi s1 s1 1
    b next
replace:
    sb	zero (s1)
    
    pop(s2)
    pop(s1)
    pop(s0)
.end_macro

# open file, file_name - name of file, x - open for, return descriptor or -1
.eqv READ 0	# for reading
.eqv WRITE 1	# for writing
.macro open(%file_name, %x)
    la a0 %file_name
    li a1 %x
    li a7 1024
    ecall
.end_macro

# get dynamic memory, size - need size, return address
.macro get_mem(%size)
    li a0, %size
    li a7, 9	
    ecall
.end_macro

# red string from filem file - decriptor, reg - register of buffer, size
.macro read_reg(%file, %reg, %size)
    li   a7, 63       
    mv   a0, %file
    mv   a1, %reg
    li   a2, %size
    ecall
.end_macro

# close file
.macro close(%file)
    mv   a0, %file
    li   a7, 57
    ecall
.end_macro

# is symol is consonant, x - register, return 1 if is consonant else 0
.macro is_cons(%x)
	li t0 97
	blt %x t0 not_cons # check is small letter
	li t0 122
	bgt %x t0 not_cons # check is small letter
	li t0 97 
	beq %x t0 not_cons # check not consonant
	li t0 101
	beq %x t0 not_cons # check not consonant
	li t0 105
	beq %x t0 not_cons # check not consonant
	li t0 111 
	beq %x t0 not_cons # check not consonant
	li t0 117
	beq %x t0 not_cons # check not consonant
	li t0 121
	beq %x t0 not_cons # check not consonant
	li a0 1
	j exit
not_cons:
	li a0 0
exit:
.end_macro

# save register on stack, x - register for saving on stack
.macro push(%x)
	addi sp sp -4
	sw %x (sp)
.end_macro

# load register from stack, x - register for saving
.macro pop(%x)
	lw	%x, (sp)
	addi	sp, sp, 4
.end_macro

# ending program
.macro exit
    li a7, 10
    ecall
.end_macro

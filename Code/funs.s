.include "macros.m"

.eqv    NAME_SIZE 256	# size of buffer for file name
.eqv    TEXT_SIZE 512 # size of buffer for text

.text
read_file: # read_file, a0 - decriptor, return a0 - buffer, a1 - size
	push(ra)

	li t0 -1
	beq a0 t0 error_name # check name file
	mv t1 a0 # save desriptor
	get_mem(TEXT_SIZE) # get memory for buffer
	
	mv t2 a0 # save address
	mv t3 a0 # save address for editing 
	li t4 TEXT_SIZE # save const
	mv t5 zero # length

read_loop:
	read_reg(t1, t3, TEXT_SIZE) # read file
	beq a0 t0 error_read # if error
	mv t6 a0 
	add t5 t5 t6
	bne t6 t4 end_loop
    
	get_mem(TEXT_SIZE)# get more memory
	add t3 t3 t6
    	b read_loop		
end_loop:
	close(t1)
	
	mv t0 t2
	add t0 t0 t5
	addi t0 t0 1
	sb zero (t0)	
	
	mv a0 t2 # buffer
	mv a1 t5 # size
	pop(ra)
	ret
	
write_string: # write file, a0 - decriptor, a1 - buffer, a2 - size
	li t1 -1	
	beq a0 t1 error_name # if error
	li   a7, 64       
	mv   a1, t2 	
	addi s0 s0 1
	mv a2 s0
	ecall  # write string
	ret
	
change_string: # modify string, a0 - string
mv t0 a0
loop:
	lb t1 (t0)
	beqz t1 loop_end # if end
	
	push(t0)
	push(t1)
	push(t2)
	
	is_cons(t1) # check is consonant
	
	pop(t2)
	pop(t1)
	pop(t0)
	
	beqz a0 not_cons # if not cons
	
	addi t1 t1 -32 # make big letter
	sb t1 (t0) # edit letter
	addi t0 t0 1 # next letter
	
	j loop
not_cons:
	addi t0 t0 1 # next letter
	j loop

loop_end:
	ret
	

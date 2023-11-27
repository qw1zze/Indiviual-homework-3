.include "funs.s"

.data
file_name: .space NAME_SIZE
strbuf: .space TEXT_SIZE

.global error_name, error_read, main

.text
main:
print_str("Input file path: ")

get_str(file_name, NAME_SIZE) # get file name

open(file_name, READ) # open file

jal read_file # get string

mv s0 a1
mv t0 a0
mv t2 a0 # save result

jal change_string # modify string

print_str ("Input path to file for writing: ")
	 
get_str(file_name, NAME_SIZE) # get filename

open(file_name, WRITE) # open file
	
	
jal write_string # srite string on file

print_str("Sring saved!")
	
exit

error_name:
	print_str("Incorrect file name\n")
	exit
error_read:
	print_str("Incorrect read\n")
	exit
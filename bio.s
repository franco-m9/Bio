# Franco Marcoccia -- 5/13/2018
# bio.s -- a biography program with some self-info
# Register use:
#	$v0	syscall parameter and return value
#	$a0	syscall paramter

	.text
	.globl		main
main:
	la	$a0, msg1	
	li	$v0, 4		
	syscall			
	la	$a0, msg2
	li	$v0, 4
	syscall
	la	$a0, msg3
	li	$v0, 4
	syscall
	la	$a0, msg4
	li	$v0, 4
	syscall

	li	$v0, 10		# this is the exit option
	syscall

# Here is the data for the program
	.data
msg1:	.asciiz	"My name is Franco Marcoccia\n"
msg2:	.asciiz "I was born in Mendoza, Argentina\n"
msg3:	.asciiz "I am a Computer Criminology major\n"
msg4:	.asciiz "I enjoy playing soccer and watching crime shows\n"

# end hello.s
.data
.asciiz "\n"
.text
main: 	addi $8, $0, 1
	addi $9, $0, 100
	addi $10, $0, 1
	addi $11, $0, 51
test:	beq  $8, $9, sai
	beq  $10, $11, sai
	div $12, $8, $10
	add $13, $13, $12
	addi $8, $8, 2
	addi $10, $10, 1
	j test	
sai: 	addi $2, $0, 1
	add $4, $0, $13
	syscall
	
	

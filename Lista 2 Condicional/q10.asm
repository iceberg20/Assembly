.text
main: 	addi $8, $0, 1
	addi $2, $0, 5
	syscall
	add $9, $0, $2
	addi $9, $9, 1
test: 	beq $8, $9, sai
	addi $2, $0, 5
	syscall	
	add $10, $10, $2
	addi $8, $8, 1
	j test
sai: 	addi $2, $0, 1
	add $4, $0, $10
	syscall
	nop
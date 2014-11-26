.text
main:
	addi $7, $0, 200
	addi $8, $0, 1
test:	beq  $7, $0, sai	
	add $10, $10, $7 
	subi $7, $7, 1
	j test	
sai: 
	addi $2, $0, 1
	add  $4, $0, $10 
	syscall
	nop

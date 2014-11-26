.data
.asciiz "\n"
.text
main:
	addi $7, $0, 200
	addi $8, $0, 1
test:	beq  $7, $0, sai
	addi $2, $0, 1
	add $4, $0, $7
	syscall
	subi $7, $7, 1
	addi $2, $0, 4
	lui $4, 0x1001
	syscall
	j test
	
sai: nop
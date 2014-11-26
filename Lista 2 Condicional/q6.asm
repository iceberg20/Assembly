.data
.asciiz "\n"
.text 
main:	addi $2, $0, 5
	syscall
	add $8, $0, $2
	addi $2, $0, 5
	syscall
	add $9, $0 , $2
	slt $10, $8, $9
	beq $10, 1, primeiro_menor	
		add $11, $0, $9
		addi $12, $8, 1
test_2:		beq $11, $12, sai
		addi $2, $0, 1
		add $4, $0, $11
		syscall
		addi $2, $0, 4
		lui $4, 0x1001
		syscall
		addi $11, $11, 1
		j test_2
primeiro_menor: add $11, $0, $8
		addi $12, $9, 1
test_1:		beq $11, $12, sai
		addi $2, $0, 1
		add $4, $0, $11
		syscall
		addi $2, $0, 4
		lui $4, 0x1001
		syscall
		addi $11, $11, 1
		j test_1
sai: nop
	
	
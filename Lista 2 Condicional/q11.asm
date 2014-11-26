.data
.asciiz " x "  # 0x1001
.asciiz "\n" # 0x1005
.asciiz " = "   # 0x1007
.text
main: 	addi $2, $0, 5
	syscall
	add $7, $0, $2
	addi $8, $0, 1
	addi $9, $0, 11
test:	beq $8, $9, sai
	addi $2, $0, 1
	add $4, $0, $7
	syscall
	addi $2, $0, 4
	lui $4, 0x1001
	syscall
	addi $2, $0, 1
	add  $4, $0, $8
	syscall 
	addi $2, $0, 4
	lui $4, 0x1001
	addi $4, $4, 6
	syscall
	mult $8, $7
	mflo $11
	addi $2, $0, 1
	add  $4, $0, $11
	syscall 
	addi $2, $0, 4
	addi $10, $0, 2
	lui $4, 0x1001	
	addi $4, $4, 4
	syscall

	
	addi $8, $8, 1
	j test
	
	
	
	
	
	
	
sai: nop
	

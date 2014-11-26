.data
.asciiz "\n"
.text
main:
	addi $7,$0, 1 #,iterador
	addi $8,$0, 101 #Condição de parada
test:	beq  $7, $8, sai	
	addi $2, $0, 1
	add  $4, $0, $7
	syscall
	addi $7, $7, 1
	addi $2, $0, 4
	lui $4, 0x1001
	syscall	
	j test
sai: nop
	
	
	
	
	
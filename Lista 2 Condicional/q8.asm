.text
main: 	addi $2, $0, 5
	syscall
	add  $8, $0, $2
	addi $8, $8, 1 # Condião de parada (n+1)
	addi $9, $0, 1 # Iterador
	addi $10, $0, 1 # Numerador
test:	beq $9, $8, sai
	div $10, $9
	mflo $11
	add $12, $12, $11
	addi $9, $9, 1
	j test 
sai: 	addi $2, $0, 1
	add $4, $0, $12
	syscall 
	
	 
	
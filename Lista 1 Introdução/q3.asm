.text

main:

addi $2, $0 ,5
syscall #Lendo valor do teclado

add $8, $0, $2 #Guardando o valor lido

addi $2, $0 ,5
syscall #Lendo valor do teclado

add $9, $0, $2 #Guardando o valor lido

slt $10, $8 $9 #$10 recebe o menor numero
beq $10, 0, show_A

beq $10, $8, show_A

addi $2, $0, 1
add $4, $0, $9
syscall
beq $0, $0, fim


show_A:
	addi $2, $0, 1
	add $4, $0, $8
	syscall
	beq $0, $0, fim
	
fim:


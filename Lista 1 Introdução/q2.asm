.text 
main:

addi $2, $0, 5
syscall #Ler o dado

add $8, $0, $2 #Guardando dado lido

addi $2, $0, 5
syscall #Ler o dado

add $9, $0, $2 #Guardando dado lido

beq $8, $9, iguais

addi $2, $0, 1 #Instrucao  para imprimir inteiro
add  $4, $0, 0 #Inteiro a ser impresso
syscall      #Imprime 0 (Pois os numero sao diferente)
beq $0, $0, fim #Finalizando o programa



iguais: 
	addi $2, $0, 1
	add  $4, $0, 1
	syscall #Imprime 1 (Pois os numeros sao iguais)
	beq $0, $0, fim
	

fim: nop
	






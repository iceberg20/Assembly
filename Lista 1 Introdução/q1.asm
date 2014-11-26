.text
main:
	addi $2, $0, 5 # Instrucao de leitura no reg $2
	syscall 	#Leitura de dados do teclado
	
	add $8, $0, $2 #Guardando dado lido em $8
	beq $8, $0, nulo #Se dado lido igual a zero pular pra label nulo:
	
	srl $9, $8, 31 #Faz o shift de 31 bit para direita
	beq $9, 0, positivo #Se o bit mais significativo for 0 pular para positivo:
	#Se o numero nao é nulo nem positivo ele so pode ser negativo
	addi $2, $0, 1 #Informar a instrucao e imprirmir pra o syscall
	addi $4, $0, -1 #Informar qual numero sera impresso
	syscall		#Imprimir o numero
	beq $0, $0, fim #finalizar programa
	
	
	  
	   
nulo: 	
	addi $2, $0, 1 #instrucao de escrita no reg $2
	addi $4, $0, 0 #Numero a ser escrito em $4
	syscall		#Escrita do numero na tela
	beq $0, $0, fim #Finalizar programa
		
positivo:
	addi $2, $0, 1 #instrucao de escrita no reg $2
	addi $4, $0, 1 #Numero a ser escrito em $4
	syscall 	#Escrita do numero na tela
	beq $0, $0, fim #finalizar programa
	
fim:
	nop #No Operation
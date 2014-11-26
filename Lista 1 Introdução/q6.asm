.text
main:

addi $2, $0, 5
syscall #Ler dados do usuario
add $8, $0, $2 #Guardar dado do usuario
addi $2, $0, 5
syscall #Ler dados do usuario
add $9, $0, $2 #Guardar dado do usuario

slt $10, $8, $9
beq $10, 1, printAB

#printBA:
	
	addi $2, $0, 1
	add  $4, $0, $9
	syscall #print B
	
	addi $2, $0, 1  
	add  $4, $0, $8
	syscall #print A
	beq $0, $0, fim

  
printAB:
	addi $2, $0, 1  
	add  $4, $0, $8
	syscall #print A
	
	addi $2, $0, 1
	add  $4, $0, $9
	syscall #print B
	beq $0, $0, fim
	


fim: nop
	
	
	
	
	




.text
main:

addi $2, $0, 5 
syscall

add $8, $0, $2 #Guada valor lido em $8

addi $2, $0, 5 
syscall

add $9, $0, $2 #Guada valor lido em $9

addi $10, $0, 2 #Guarda peso 2 no reg $10   
addi $11, $0, 3 #Guarda peso 3 no reg $11 

mult $8, $10  #Multiplica $9 por peso 2 salvo em $10

mflo $12 #Guarda no $12 resultado 1 de lo(peso2 *n1)

mult $9, $11  #Multiplica $8 por peso 3 salvo em $11

mflo $13  #Guarda no $13 resultado 2 de lo(peso3 *n2) em $13

add $14, $12, $13 # $14 = (peso 2*n1)+ (peso3+n2)

addi $15, $0, 5 #Valor que será o divisor ( 5 ) exemplo: (a+b)/5

div $14, $15 #resultado da divisao armazenado no lo

mflo $16 #Media do aluno

subi $17, $16, 6

beq $17, $0, Aprovado
slti $18, $17, 0 
beq $18, 1, Reprovado
beq $0, $0, Aprovado




Aprovado: addi $2, $0, 1
	  addi $4, $0, 1
	  syscall
	  beq $0, $0, fim
	  
Reprovado: addi $2, $0, 1
	   addi $4, $0, -1
	   syscall
	   beq $0, $0, fim

fim: nop

#media = (n1*2 + n2*3)/5
 

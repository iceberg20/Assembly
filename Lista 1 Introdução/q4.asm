.text
main:

addi $2, $0, 5
syscall #Ler dado do usuario

add $8, $0, $2 #Guardanfo dado 

addi $2, $0, 5
syscall #Ler dado do usuario

add $9, $0, $2 #Guardanfo dado

addi $2, $0, 5
syscall #Ler dado do usuario

add $10, $0, $2 #Guardanfo dado

slt $11, $8, $9
beq $11, $0, $8_maior_que_$9

slt $11, $9, $10
beq $11, $0, $9_maior_que$10

#$10_maior_que_$9
addi $2, $0, 1
add  $4, $0, $10
syscall
beq $0, $0, fim




$8_maior_que_$9:
		slt $11, $8, $10
		beq $11, $0, $8_maior_que_$10
		
$8_maior_que_$10:
		addi $2, $0, 1
		add  $4, $0, $8
		syscall
		beq $0, $0, fim
		
$9_maior_que$10:
		addi $2, $0, 1
		add  $4, $0, $9
		syscall
		beq $0, $0, fim

fim: nop






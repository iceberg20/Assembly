.text
main:

addi $2, $0, 5
syscall #Ler dado do usuario
add $8, $0, $2 #Guardar em $8 dado lido
addi $9, $0, 2 #Divisor 2
div $8, $9 # lo = $8/$9
mfhi $10 # $10 = hi
beq $10, $0, par
#impar
addi $2, $0, 1
addi $4, $0, 1
syscall 
beq $0, $0, fim

par:
addi $2, $0, 1
addi $4, $0, 2
syscall 

fim: nop

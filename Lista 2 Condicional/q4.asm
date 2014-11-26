.data
.asciiz "\n"
.text
main:	add $12, $0, $0
	addi $9, $0, 1 # 0/1 - Par/Impar
	addi $7, $0, 1  #iterador
        addi $8, $0, 40 #condição de parada
 test:  beq  $12, $8, sai
        bne  $9, $0, setPar  
        addi $12, $12, 1
        addi $2, $0, 1
        add  $4, $0, $7
        syscall
        addi $2, $0, 4
        lui $4, 0x1001
        syscall
        addi $7, $7, 1
        addi $9, $0, 1 #SetIapar
        j test
      	

setPar: add $9, $0, $0
	  addi $7, $7, 1
	  j test
	  
sai: nop
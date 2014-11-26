.data
.asciiz "\n"
.text
main: addi $2, $0, 5
      syscall
      addi $7, $2, 1
      addi $8, $0, 1
test: beq $8, $7, sai
      add $10, $10, $8
      addi $8, $8, 1
      j test
sai: 	addi $2, $0, 1
	add $4, $0, $10
	syscall
	nop
.data
msg1: .asciiz "Enter an integer: "

.text	
addi $v0, $zero, 4	
la $a0, msg1     	#print msg1
syscall 

li $v0, 5
syscall

add $t1, $v0, $zero	#$t1 = $v0

addi $v0, $zero, 4
la $a0, msg1    	#print msg1
syscall 

li $v0, 5
syscall

add $t2, $v0, $zero	#$t2 = $v0

addi $v0, $zero, 4
la $a0, msg1     	#print msg1
syscall 

li $v0, 5
syscall

add $t3, $v0, $zero	#$t3 = $v0

add $t1, $t1, $t2
add $t1, $t1, $t3

li $v0, 1
addi $a0, $t1, 0
syscall 

li $v0, 10
syscall 
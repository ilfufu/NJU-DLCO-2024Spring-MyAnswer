.text
main:
	lw t0,0(x0)
	addi a1,x0,1
	add a2,t0,x0
L1:
	addi a3,x0,1
L2:
	 slli a4,a3,2
	lw a6,0(a4)
	lw a7,4(a4)
	bge a7,a6,L4
	sw a7,0(a4)
	sw a6,4(a4)
L4:
	addi a3,a3,1
	bltu a3,a2,L2
L3:
	sub a2,a2,a1
	bne a2,a1,L1
	ecall
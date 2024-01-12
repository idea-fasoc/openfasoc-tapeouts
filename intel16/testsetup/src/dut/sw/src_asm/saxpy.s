start:	
	li	x6, 0
	li	x7, 9999
	li	x1, 0x20000008
	li	x2, 0x20000098

	li x3, 3
	sw x3, 0(x1)
	li x3, 1
	sw x3, 8(x1)
	li x3, 4
	sw x3, 16(x1)
	li x3, 1
	sw x3, 24(x1)
	li x3, 5
	sw x3, 32(x1)
	li x3, 9
	sw x3, 40(x1)
	li x3, 2
	sw x3, 48(x1)
	li x3, 6
	sw x3, 56(x1)
	li x3, 5
	sw x3, 64(x1)
	li x3, 3
	sw x3, 72(x1)
	li x3, 5
	sw x3, 80(x1)
	li x3, 8
	sw x3, 88(x1)
	li x3, 9
	sw x3, 96(x1)
	li x3, 7
	sw x3, 104(x1)
	li x3, 9
	sw x3, 112(x1)
	li x3, 3
	sw x3, 120(x1)
	li x3, 2
	sw x3, 128(x1)
	li x3, 3
	sw x3, 136(x1)

	li x3, 1
	sw x3, 0(x2)
	li x3, 4
	sw x3, 8(x2)
	li x3, 1
	sw x3, 16(x2)
	li x3, 4
	sw x3, 24(x2)
	li x3, 2
	sw x3, 32(x2)
	li x3, 1
	sw x3, 40(x2)
	li x3, 3
	sw x3, 48(x2)
	li x3, 5
	sw x3, 56(x2)
	li x3, 6
	sw x3, 64(x2)
	li x3, 2
	sw x3, 72(x2)
	li x3, 3
	sw x3, 80(x2)
	li x3, 7
	sw x3, 88(x2)
	li x3, 3
	sw x3, 96(x2)
	li x3, 0
	sw x3, 104(x2)
	li x3, 9
	sw x3, 112(x2)
	li x3, 5
	sw x3, 120(x2)
	li x3, 0
	sw x3, 128(x2)
	li x3, 4
	sw x3, 136(x2)

loop:	lw	x3, 0(x1)	
	mul	x3,	x3,	x7 # r2 <- a * x[i]
	lw	x4, 0(x2)	
	add	x3,	x4,	x3 # r2 += y[i]
	sw	x3, 0(x2)	

	
	addi	x1,	x1,	8 #
	addi	x2,	x2,	8 #

	
	addi	x6,	x6,	1 #
	sltu	x5,	x6,	18 #
	bne	x5,	x0,	loop #
	
	li s0, 0x30010000 #gpio base address
	sw x3, 0x14(s0) #send out to gpio direct out
	j start
start: li s0, 0x30010000 #gpio base address
li x12, 10
li x13, 20
add x14, x12, x13 #x14=x12(10)+x13(20)=30
sw x14, 0x14(s0) #send out to gpio direct out
j start
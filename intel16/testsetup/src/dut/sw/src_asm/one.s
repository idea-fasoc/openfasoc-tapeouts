li s0, 0x30010000 #gpio base address
li x12, 255
sw x12, 0x14(s0) #send out to gpio direct out
wfi
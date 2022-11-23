.text
.globl main

main:
    li t0, 0x80001500		// Pointer to address of pushbutton
    li t2, 0x80001400

while:  
    lw t1, 0(t2)
    lb t1, 0(t0)			 // Load the push button pressed

  j while
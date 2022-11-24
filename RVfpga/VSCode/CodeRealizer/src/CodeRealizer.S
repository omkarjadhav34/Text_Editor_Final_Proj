.data

/*Keycode lookup table */
add_lookup: .byte 0x1C, 0x23  
sub_lookup: .byte 0x1B, 0x3C, 0x32
and_lookup: .byte 0x1C, 0x31, 0x23
div_lookup: .byte 0x23, 0x43, 0x2A

//Alphabets lookup table
display_add: .byte 0xc2, 0xc2, 0x88, 0x00
display_sub: .byte 0xA4, 0xC1, 0xE0, 0x00		
display_and: .byte 0x88, 0xF6, 0xC2, 0x00	
display_div: .byte 0xC2, 0xAF, 0xDC, 0x00

.text

.globl main

main:

//li s0, 0x80001500 // keyboard data
la s1, add_lookup        // load address of add lookup array in s1
la s2, sub_lookup       // load address of sub lookup array in s2
la s3, and_lookup       // load address of mul lookup array in s3
la s4, div_lookup      // load address of div lookup array in s4

li s5, 0x80001404 //GPIO_LEDs
li s6, 0x80001408 //GPIO_INOUT
		
li t4, 0xFFFF     //s6 as input
sw t4, 0(s6)      //Write the Enable Register
li t4, 0x0        //s5 as ouput
sw t4, 0(s5)      //Write the Enable Register

while:
li t4, 0x0        //s5 as ouput
sw t4, 0(s5)      //Write the Enable Register

li t0, 0x1C   // keyboard read and loaded into t0

beq t0 , zero, while     //t0==zero reading the keyboard value again

lb t3,0(s1)
beq t0,t3,ADD        //t0==a branch to ADD  
lb t3,0(s2)
beq t0,t3,SUB       //t0==s branch to SUB
lb t3,0(s3)
beq t0,t3,AND       //t0==m branch to MUL
lb t3,0(s4)
beq t0,t3,DIV       //t0==d branch to DIV


j while					//jump to while

ADD:

li t0, 0x23  //keyboard read and loaded into t0    
lb t1, 1(s1)	
beq t0, zero, ADD                        
bne t0, t1, while  //if t0 is not equal to second element that is d, branch to while
here:
li t0, 0x23   
lb t2, 1(s1)       //keyboard read and loaded into t0
beq t0, zero, here
bne t0, t2, while	//if t0 is not equal to d branch to while

li t2,0x01

j display

SUB:

li t0, 0x3c		//keyboard read and loaded into t0   
lb t1, 1(s2)	
bne t0, zero, SUB                                               
bne t0, t1, while    //if t0 is not equal to second element that is u, branch to while
here1:
li t0, 0x32   
lb t2, 2(s2)              //keyboard read and loaded into t0
bne t0, zero, here1	      
bne t0, t2, while        //if t0 is not equal to b branch to while

li t2,0x02

j LED
j display				//jump to display

AND:

li t0, 0x31	//keyboard read and loaded into t0 
lb t1, 1(s3)		
bne t0, zero, AND                               
bne t0, t1, while    //if t0 is not equal to second element that is u, branch to while
here2:
li t0, 0x23
lb t2, 2(s3)	          //keyboard read and loaded into t0
bne t0, zero, here2
bne t0, t2, while    //if t0 is not equal to l branch to while

li t2,0x03

j LED				//jump to display
j display

DIV:

li t0, 0xAF	 //keyboard read and loaded into t0    
lb t1,1(s4)   
bne t0, zero, DIV                         
bne t0,t1, while    //if t0 is not equal to second element that is i, branch to while
here3:
li t0, 0xDC
lb t2,2(s4)           //keyboard read and loaded into t0
bne t0, zero, here3
bne t0,t2, while    //if t0 is not equal to v branch to while

li t2,0x04

j LED				//jump to display
j display


LED:
li   t0, 0x1
sw   t0, 0(s5)              //Write to LEDs

j while


display:

li t1, 0x01
beq t1,t2,ADD_DISPLAY
li t1, 0x02
beq t1,t2,SUB_DISPLAY
li t1, 0x03
beq t1,t2,AND_DISPLAY
li t1, 0x04
beq t1,t2,DIV_DISPLAY

ADD_DISPLAY:

la t5, display_add
lw t6, 0(t5)
li t4, 0x00
slli t4, t4, 8
ori t4, t4, 0x80
slli t4, t4, 8
ori t4, t4, 0x80
slli t4, t4, 0x8
ori t4, t4, 0x80

or t6, t6, t4

li t4, 0x80001038
sw t6, 0(t4)
j while

SUB_DISPLAY:

la t5, display_sub
lw t6, 0(t5)

li t4, 0x80001038
sw t6, 0(t4)

j while

AND_DISPLAY:

la t5, display_and
lb t6, 0(t5)

li t4, 0x80001038
sw t6, 0(t4)

j while

DIV_DISPLAY:

la t5, display_div
lb t6, 0(t5)

li t4, 0x80001038
sw t6, 0(t4)

j while

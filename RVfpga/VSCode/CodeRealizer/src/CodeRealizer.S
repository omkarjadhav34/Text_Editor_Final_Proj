.data

//ASCII lookup table 
add: .byte 0x61, 0x64  
sub: .byte 0x73, 0x75, 0x62
mul: .byte 0x60, 0x75, 0x6C
div: .byte 0x61, 0x69, 0x76


.text
.global main

main:

li s0, 0x80001500 // keyboard data
la s1, add        // load address of add lookup array in s1
la s2, sub        // load address of sub lookup array in s2
la s3, mul        // load address of mul lookup array in s3
la s4, div        // load address of div lookup array in s4
li s5, 0x80001404 //GPIO_LEDs
li s6, 0x80001408 //GPIO_INOUT

li t4, 0xFFFF     //s6 as input
sw t4, 0(s6)      //Write the Enable Register
li t4, 0x0        //s5 as ouput
sw t4, 0(s5)      //Write the Enable Register

while:
li t4, 0x0        //s5 as ouput
sw t4, 0(s5)      //Write the Enable Register

lw t0, 0(s0)      // keyboard read and loaded into t0

beq t0 , zero, while     //t0==zero reading the keyboard value again

beq t0, 0(s1), ADD      //t0==a branch to ADD  
beq t0, 0(s2), SUB      //t0==s branch to SUB
beq t0, 0(s3), MUL		//t0==m branch to MUL
beq t0, 0(s4), DIV		//t0==d branch to DIV


j while					//jump to while

ADD:

lb t0, 0(s0)   			//keyboard read and loaded into t0                            
bne t0, 1(s1), while    //if t0 is not equal to second element that is d, branch to while
lb t0, 0(s0)            //keyboard read and loaded into t0
bne t0, 1(s0), while	//if t0 is not equal to d branch to while

j  display              //jump to display

SUB:

lb t0, 0(s0)			//keyboard read and loaded into t0                                                  
bne t0, 1(s2), while    //if t0 is not equal to second element that is u, branch to while
lb t0, 0(s0)            //keyboard read and loaded into t0
bne t0, 2(s2), while    //if t0 is not equal to b branch to while

j display				//jump to display

MUL:

lb t0, 0(s0)			//keyboard read and loaded into t0                               
bne t0, 1(s3), while    //if t0 is not equal to second element that is u, branch to while
lb t0, 0(s0)            //keyboard read and loaded into t0
bne t0, 2(s3), while    //if t0 is not equal to l branch to while

j display				//jump to display

DIV:

lb t0, 0(s0)			//keyboard read and loaded into t0                               
bne t0, 1(s4), while    //if t0 is not equal to second element that is i, branch to while
lb t0, 0(s0)            //keyboard read and loaded into t0
bne t0, 2(s4), while    //if t0 is not equal to v branch to while

j display				//jump to display


display:
li   t0, 0x1
sw   t0, 0(s5)               //Write to LEDs

j while
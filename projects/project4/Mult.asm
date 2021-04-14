// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@i  // set i=1
M=1

@sum // set sum to be 0
M=0

(LOOP) // beginning of a loop
@i
D=M

@R1
D=D-M

@STOP 
D;JGT  // while(i<=RAM[R1])

@R0
D=M 

@sum
M=D+M // sum += RAM[R0]

@i
M=M+1 // i++

@LOOP
0;JMP // jump to the beginning of loop

(STOP)
@sum
D=M

@R2
M=D // Store result in R2

(END)
@END
0;JMP // ending infinite loop
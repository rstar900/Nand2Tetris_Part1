// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(INFINITE)
@SCREEN
D=A  

@addr
M=D //ADDR IS THE POINTER HERE POINTING AT SCREEN 

@8191
D=D+A

@n
M=D //n set to final register

@KBD  
D=M  //SETTING KBD REGISTER VALUE

@LOOP2
D;JGT //IF REGISTER VALUE GREATER THAN 0 THEN BLACK WILL RUN 

(LOOP1)
@addr
D=M

@n
D=D-M

@INFINITE
D;JGT  //WHILE(ADDR <= N)

@addr
A=M

M=0 //WRITE 0 TO EVERY PIXEL

@addr
M=M+1 //ADDR++

@LOOP1
0;JMP

(LOOP2)
@addr
D=M

@n
D=D-M

@INFINITE
D;JGT //SAME AS LOOP1 BUT ONLY M=-1 THIS TIME

@addr
A=M

M=-1

@addr
M=M+1

@LOOP2
0;JMP

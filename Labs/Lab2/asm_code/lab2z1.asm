	ORG 0000H
	LJMP 0100H
	ORG 0100H
MAIN:
	SETB IE.7 ; set EA of timer 0
	SETB IE.1 ; enable timer 0
	MOV 89H,#01H ; set tmod to mode1
	MOV R1,#10H 
	MOV 8AH,#97H ; set lower bits of count for 39ms
	MOV 8CH,#73H ;set higher bits of count for 39ms
	MOV 88H,#10H ; set tcon timer 0
HERE:	SJMP HERE
	ORG 000BH ; starting address of isr
	CLR P1.7; complement unused bits
	DEC R1 ; decrement count loaded in r1
	MOV A,R1 ; load accumulator with value of R1
	JNZ loop
	CPL P1.4 ; toggle LED
	MOV R1, #10H ; load count 16 in R1
	MOV 8AH,#97H 
	MOV 8CH,#73H
loop:	MOV 8AH,#97H 
	MOV 8CH,#73H
	SETB P1.7 
	RETI return from isr

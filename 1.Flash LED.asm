	ORG	0000h
	MOV	A,#00h
LOOP:	MOV	P1,A
	CPL	A
	LCALL	DELAY
	SJMP	LOOP
	
DELAY:	MOV	R0,#200
L1:	MOV	R1,#200
L2:	DJNZ	R1,L2
	DJNZ	R0,L1
	RET
	END
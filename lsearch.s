		AREA LINERAR,CODE,READONLY
START
		LDR R0,=0X40000000
		MOV R12,#0XFF
		LDR R1,[R0],#4;N
		LDR R2,[R0],#4;SEARCH ELEMENT
LOOP	LDR R3,[R0],#4
		CMP R2,R3
		BEQ FOUND
		SUBS R1,R1,#1
		BNE LOOP
		B EXIT
FOUND	MOV R12,#0X11
EXIT	B EXIT
		END
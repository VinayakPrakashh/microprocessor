.MODEL SMALL
.STACK 100H
.DATA
	MSG DB "ENTER THE NUMBER: $"
.CODE
	MOV AX, @DATA
	MOV DX, AX
	MOV AX, 0H
	LEA DX, MSG
	MOV AH, 09H
	INT 21H
   	MOV AH, 01H
   	INT 21H
   	SUB AL, 30H
   	MOV AH, 0H
   	MOV CX, AX
   	DEC CX
BACK:	MUL CX
	LOOP BACK
	MOV DL, AL
	MOV AH, 02H
	INT 21H
	MOV AH, 4CH
	INT 21H
	END

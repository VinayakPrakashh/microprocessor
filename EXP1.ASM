.MODEL SMALL
.STACK 100H
.DATA
        MSG1 DB "Number is ODD$"
        MSG2 DB "Number is EVEN$"
        READ DB "Enter a NUMBER: $"
.CODE
        MOV AX, @DATA
        MOV DS, AX
        LEA DX, READ
        MOV AH, 09H
        INT 21H
        MOV AH, 01H
        INT 21H
        MOV DL, 10
	MOV AH, 02H
	INT 21H
        SUB AL, 30
        SHR AL, 01
        JC ODD
        LEA DX, MSG2
        MOV AH, 09H
        INT 21H
        JMP LAST
ODD:	LEA DX, MSG1
	MOV AH, 09H
	INT 21H
LAST:	MOV AH, 4CH
	INT 21H
	END

.MODEL SMALL
.STACK 100H
.CODE
MOV AL,45H
AND AL,0F0H
MOV CL,04
SHR AL,CL
OR AL,30H
MOV DL,AL
MOV AH,02H
INT 21H
MOV AL,45H
AND AL,0FH
OR AL,30H
MOV DL,AL
MOV AH,02H
INT 21H
MOV AH,4CH
INT 21H
END

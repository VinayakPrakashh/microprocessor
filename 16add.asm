.model small
.code
MOV AX,0FADEH
MOV BX,01234H
ADD AX,BX
MOV AH,4CH
INT 21H
END

.model small
.stack 100h
.code
MOV SI, 2000H
MOV CL,[SI]
MOV AX,0000H
XX: ADD AL,CL
DEC CL
JNZ XX
INC SI
MOV [SI],AL
MOV AH,4CH
INT 21H
END

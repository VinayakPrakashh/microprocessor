.model small
.code 
MOV al,08h
MOV bl,05h
MUL bl
MOV Ah,4Ch
INT 21h
END

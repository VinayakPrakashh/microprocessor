.model small
.stack 100h
.data
        read db" enter any number $"
        msg1 db" the given number is divisible by 3 $"
        msg2 db" the given number is not divisible by 3 $ "
.code
        mov ax,@data
        mov ds,ax
        LEA dx,read
        mov ah,09h
        int 21h
        mov ah,01h
        int 21h
        sub al,30h
        JC next
        lea dx,msg1
        mov ah,09h
        int 21h
        Jmp last
 next:  lea dx,msg2
        mov ah,09h
        int 21h
 last:mov ah,4ch
        int 21h
        end

.model small
.code
mov ah,8h
mov bh,2h
mul ah,bh
mov ah,4ch
int 21h
end


.model small
.stack 100h
.data
	num db 08h,10h,23h,43h,55h,53h,07h,15h,19h,33h

.code 
	mov ax, @data
	mov ds, ax
	mov cx, 0ah
	lea si, num
	mov ah, 0h
	mov al, [si]
	dec cx
back:	inc si
	cmp al, [si]
	jnc next
	mov al, [si]
next: 	loop back
	mov ah, 4ch
	int 21h
	end

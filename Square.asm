jumps
.model small
.stack 100h
.data
random db 10, 13, ' 1 2 3 4 5 6 7 8 9 R$'

.code

main proc
    
    mov cx, 10
    mov ax, @data
    mov ds, ax
    
    
    
top: mov ah, 09h
     lea dx, random
     int 21h
     dec cx
     cmp cx, 0
     jne top
     
     mov ah, 4ch
     int 21h
     
NEW_LINE:
       MOV dl, 10
       MOV ah, 02h
       INT 21h
       MOV dl, 13
       MOV ah, 02h
       INT 21h
       ret

main endp    
end main 

.model small
.stack 100h

.data
temp1 dw 0
stars1st dw 0
stars dw 1


.code

main proc 
    mov ax, @data
    mov ds, ax
    
    mov cx, start1st
    
printline1:
    mov dl, '*'
    mov ah, 02h
    int 21h
loop printline1
    
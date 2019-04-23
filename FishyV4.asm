.model small
.stack 100h

.data
temp1 dw 0
stars1st dw 2
stars dw 1


.code

main proc 
    mov ax, @data
    mov ds, ax
    
    mov cx, stars1st
    
printline1:
    
    mov cx, 5
    
printstartspacesline1:    
    mov dl, ' '
    mov ah, 02h
    int 21h
loop printstartspacesline1

    mov cx, 2
    
printlinestars1:
    mov dl, '*'
    mov ah, 02h
    int 21h
loop printlinestars1




main endp

end main
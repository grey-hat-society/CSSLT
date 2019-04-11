.model small
.stack 100h

.data

temp dw 1

.code

main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 5
    
    outer:
    
    mov bx, cx
    
    mov cx, temp
    
    l1:
    
       mov dl, '*'
       mov ah, 02h
       int 21h
       
       loop l1
   
    add temp, 1   
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    
    mov cx,bx   
       
       
    loop outer
    
    mov ah, 4ch
    int 21h
    
main endp

end main
      
     
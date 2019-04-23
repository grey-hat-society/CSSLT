.model small
.stack 100h

.data 

Space dw 8
Star dw 1
Space1 dw 2
Star1 dw 13
NewLine db 13,10,'$'


.code


ShowMsg macro Msg
    lea dx, Msg
    mov ah, 09h
    int 21h
    
endm

main proc

    mov ax, @data
    mov ds, ax
    
    mov cx, 8
    
    
    outer: 
            mov bx, cx
            mov cx, Space
            
    Spaces:
            mov dl, ' '
            mov ah, 02h
            int 21h
            
            loop Spaces
    
    dec Space
    mov cx, Star

    Stars:
    mov dl, '2'
            mov ah, 02h
            int 21h
            loop Stars

    inc Star
    inc Star
    
    ShowMsg NewLine
    
    mov cx, bx
    
    loop outer
    
    mov cx, 7
    
   
    outer1:
            mov bx, cx
            mov cx, Space1
            
    Spaces1:
            mov dl, ' '
            mov ah, 02h
            int 21h
            
            loop Spaces1
    
    inc Space1
    mov cx, Star1

    Stars1:
            mov dl, '\'
            mov ah, 02h
            int 21h
            loop Stars1

    dec Star1
    dec Star1
    
    ShowMsg NewLine
    
    mov cx, bx
    
    loop outer1

      
    mov ah, 4ch
    int 21h

main endp    
end main
    

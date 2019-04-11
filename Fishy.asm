.model small
.stack 100h

.data

spaces dw 5
print dw 1
temp1 dw 0
temp2 dw 5
iterations dw 0
.code

main proc
    
    mov ax, @data
    mov ds, ax
    mov temp1, cx
    mov cx, 5
    
    outer2:
    
    mov bx, cx
    mov cx, temp2
   
    outer1: 
    
    mov iterations, cx
    
    mov cx, print
    
    
    l1:
    
    mov dl, '*'
    mov ah, 02h
    int 21h
    
    loop l1
    
    
    
    mov cx, spaces
    
    l2:
    
    mov dl, 's'
    mov ah, 02h
    int 21h 
    
    loop l2
    
    
    
    mov dl, '*'
    mov ah, 02h
    int 21h
    
    
    
    mov cx, iterations
    
    loop outer1
    
    
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    sub spaces, 2
    cmp spaces,0
    jl endpoint
    
    mov cx, bx
    
    loop outer2
    
endpoint:    
    mov ah, 4Ch
    int 21h
    
main endp
end main
        
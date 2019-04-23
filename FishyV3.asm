.model small
.stack 100h

.data

startspaces dw 3
stars dw 2
betweenspaces dw 0
temp1 dw 0
temp2 dw 0
segments dw 5
.code

main proc

    mov ax, @data
    mov ds, ax
    mov cx, 5
    
no1linesegmentloop:
    
    mov temp1, cx
    mov cx, 5
    
    
no1linespaces:

    mov dl, 's'
    mov ah, 02h
    int 21h
    
    
loop no1linespaces

    mov cx, 2
    
    
no1linestars:

    mov dl, '*'
    mov ah, 02h
    int 21h
    
loop no1linestars

mov cx, temp1

loop no1linesegmentloop
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
mov cx, segments

outer1:

    mov cx,bx
    mov cx, 1
    
print2star:

    mov dl, '*'
    mov ah, 02h
    int 21h
    
loop print2star

mov cx, 2

print2line:

    mov dl, 's'
    mov ah, 02h
    int 21h
    
loop print2line
    



    
main endp

end main
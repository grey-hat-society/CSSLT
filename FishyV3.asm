.model small
.stack 100h

.data

startspaces dw 0
stars dw 2
betweenspaces dw 0
temp1 dw 0
temp2 dw 0
segments dw 5
.code

main proc

    mov ax, @data
    mov ds, ax
    mov cx, 4
    
lineloop:

    mov bx, cx
    mov cx, segments
 
segmentsloop:
    
    mov temp1, cx
    mov cx, startspaces
    
print startspaces:
      
    cmp bx, 4
    je ps
    mov dl, 's'
    mov ah, 02h
    int 21h
    
    
ps: mov, stars
    
printstars:

    mov dl, '*'
    mov ah, 02h
    int 21h
    
    mov cx, betweenspaces

printspacesbetween:
    
    mov dl, 's'
    mov ah, 02h
    int 21h

loop printspacesbetween    
    



main endp

end main 
    
        

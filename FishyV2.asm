.model small
.stack 100h

.data 

startspaces dw 1
stars dw 1
betweenspaces dw 3
temp1 dw 0 
temp2 dw 0
segments dw 5
lines dw 3

.code

main proc


mov ax, @data
mov ds, ax

mov cx, 3




outerL:


    mov bx, cx
    
    mov cx, segments
        
segmentsL: 
    
     mov temp1, cx
     
     cmp bx, 3      ;Line to check which line we are printing on and to neglect the first line
     je PSL   
     cmp cx, 5
     jne PSL        ;Line to only print the first segment   
     cmp startspaces, 3
     je PSL         ; Line to check if startspaces are NULL to avoid infinite loop
     

     mov cx, startspaces
     inc startspaces
printstartspaces:

     mov dl, 's'
     mov ah, 02h
     int 21h
loop printstartspaces
     

PSL: mov cx, stars
     
printstarL:
     mov dl, '*'
     mov ah, 02h
     int 21h
loop printstarL  



cmp betweenspaces, 0
jle PSLB
mov cx, betweenspaces


printspaces:
     mov dl, '9'
     mov ah, 02h
     int 21h
     
loop printspaces

PSLB:
     mov cx, temp1
     
loop segmentsL

;dec betweenspaces
sub betweenspaces, 2    
;inc startspaces

mov dl, 10
mov ah, 02h
int 21h

mov dl, 13
mov ah, 02h
int 21h

mov cx, bx


loop outerL

mov ah, 4CH
int 21h

main endp

end main

    





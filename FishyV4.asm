.model small
.stack 100h

.data
temp1 dw 0
temp2 dw 0
stars1st dw 2
stars dw 1
star db '*$'
space db ' $'
CRLF db 13,10,'$'
q db ?
.code

ShowMsg Macro Msg
    lea dx, Msg
    mov ah, 09h
    int 21h
endm

main proc 
    mov ax, @data
    mov ds, ax
    mov cx, 5
    call ClearScreen   


loopline1: 
    mov temp1, cx
    mov cx, 5

line1spc:
    ShowMsg space
    loop line1spc
    mov cx, 2

linestar1:
    ShowMsg star
    loop linestar1
    mov cx, temp1
    loop loopline1
;-------------------------------------------------------------   
    ShowMsg CRLF
    mov cx, 10 ; since it is 10 segments
        
loopline2:
    mov temp2, cx
    mov cx, 1
    
line2star:
    ShowMsg star
    loop line2star
    
    mov ax, temp2
    mov bl, 2
    div bl
    mov q, ah
    cmp q, 0
    jne b
a:    
mov cx, 3
    
line2spc:
    ShowMsg space
    loop line2spc   
    jmp c
b:
    mov cx, 2
line3spc:
    ShowMsg space
    loop line3spc
c:   
    mov cx, temp2
loop loopline2 
    ;mov ax, 20
   ; mov bl, 4
   ;div bl
   ;mov q, ah
   ;mov dl, q
   ;add dl, 48
   ; mov ah, 02h
   ; int 21h
ShowMsg star   
;------------------------------------------------------------------------- line 3
ShowMsg CRLF
ShowMsg space
    mov cx, 5 ; since it is 5 segments
        
loopline3:
    mov temp2, cx
    mov cx, 1
    
line3star:
    ShowMsg star
    ShowMsg space
    ShowMsg star
    loop line2star
 
    mov cx, 4
    line3bspc:
    
    ShowMsg space
    loop line3bspc   
    
  
    mov cx, temp2
    loop loopline3    
    ShowMsg star

    ;------------------------------------------------------------------------- line 4
    ShowMsg CRLF
    ShowMsg space
    ShowMsg space
    mov cx, 5 ; since it is 5 segments
        
loopline4:
    mov temp2, cx
    mov cx, 1
    
line4star:
    ShowMsg star
    loop line4star
 
    mov cx, 6
    line4spc:
    
    ShowMsg space
    loop line4spc   
    
  
    mov cx, temp2
    loop loopline4
    ShowMsg star
    
 ;--------------------------------------------------line 5
 
 ShowMsg CRLF
ShowMsg space
    mov cx, 5 ; since it is 5 segments
        
        loopline5:
    mov temp2, cx
    mov cx, 1
    
    line5star:
    ShowMsg star
    ShowMsg space
    ShowMsg star
    loop line5star
 
    mov cx, 4
    line5spc:
    
    ShowMsg space
    loop line5spc   
    
  
    mov cx, temp2
    loop loopline5    
    ShowMsg star
    ;-------------------------------------line 6
    ShowMsg CRLF
    mov cx, 10 ; since it is 10 segments
        
    loopline6:
    mov temp2, cx
    mov cx, 1
    
    line6star:
    ShowMsg star
    loop line6star
    
    mov ax, temp2
    mov bl, 2
    div bl
    mov q, ah
    cmp q, 0
    jne ab
aa:    
mov cx, 3
    
line6spc:
    ShowMsg space
    loop line6spc   
    jmp ac
ab:
    mov cx, 2
    line6bspc:
    ShowMsg space
    loop line6bspc
ac:   
    mov cx, temp2
    loop loopline6 
    ;mov ax, 20
   ; mov bl, 4
   ;div bl
   ;mov q, ah
   ;mov dl, q
   ;add dl, 48
   ; mov ah, 02h
   ; int 21h
ShowMsg star
ShowMsg CRLF   
;----------------------------------------line 7
mov cx, 5
loopline7: 
    mov temp1, cx
    mov cx, 5

    line7spc:
    ShowMsg space
    loop line7spc
    mov cx, 2

    linestar7:
    ShowMsg star
    loop linestar7
    mov cx, temp1
    loop loopline7

    mov ah, 4ch
    int 21h
main endp


ClearScreen Proc
       mov ah, 0h
       mov al, 3h
       int 10h
       ret
ClearScreen endp


end main
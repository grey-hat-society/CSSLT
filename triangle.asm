.model small
.stack 100h

.data

temp dw 1
temp2 dw 5
temp3 dw 20
half_botoom dw 1

.code

main proc 

    mov ax, @data
    mov ds, ax

    mov cx, 5
    
    outer:
    
    mov bx, cx
    
    mov cx, temp
    
    
left:  

       mov dl, '5'
       mov ah, 02h
       int 21h
       
       loop left
       
       add temp, 1
       
       mov cx, temp3
long_space:

            mov dl, ''
            mov ah, 02h
            int 21h
            
            loop long_space
        
            sub temp3, 1
            
      
     
    
    mov cx, temp2
       
right:
    
       mov dl, '6'
       mov ah, 02h
       int 21h
       
       loop right
   
    cmp cx, 0
    je enter1
   continue1: sub temp2, 1 
    
    

    mov cx,bx   
       
       
    loop outer
    
    mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, 10
    mov ah, 02h
    int 21h
    
    add half_botoom, 1
    cmp half_botoom, 2
    je bottom
    
    mov ah, 4ch
    int 21h
    
    enter1:
     mov dl, 13
    mov ah, 02h
    int 21h
    
    mov dl, 10
    mov ah, 02h
    int 21h
    jmp continue1
    
    
    bottom:
    mov cx, 5
    mov temp, 1
    mov temp2, 5
    mov temp3, 20
    jmp outer
    
main endp

end main
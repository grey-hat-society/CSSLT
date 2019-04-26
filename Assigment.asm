.model small
.stack 100h

.data
;Screens

Wecome_Page                 db 10, "---------------------------------------"    
                            db 10, "             Modesto POS", 10
                            db     "---------------------------------------", 10  
                            db     " 1. Use Program", 10
                            db     " 2. Exit", 10, 13
                            db     "$"



temp1 dw ? 
temp2 dw ?

.code
ShowMsg Macro Msg
    lea ds, Msg
    mov ah, 09
    int 21h
endm



main proc
    mov ax, @data
    mov ds, ax


    lea dx, Welcome_Page
    
    
main endp
end main
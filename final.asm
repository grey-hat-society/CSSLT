.model small
.stack 100h

.data
;Screens

Welcome_Page                db 10, "---------------------------------------"    
                            db 10, "             Modesto POS", 10
                            db     "---------------------------------------", 10  
                            db     " 1. Use Program", 10
                            db     " 2. Exit", 10, 13
                            db     "$"



                            ;temp1 dw ? 
;temp2 dw ?

.code
ShowMsg Macro Msg
    lea ds, Msg
    mov ah, 09
    int 21h
endm



main proc
    mov ax, @data
    mov ds, ax

    ;mov ah, 0h
    ;mov al, 3h
    ;int 10h
    mov ah, 09h 
    lea dx, Welcome_Page
    int 21h
    
    mov ah, 4ch
    int 21h 
main endp
end main
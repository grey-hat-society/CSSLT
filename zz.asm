jumps
.model small
.stack 100h

.data

number dw 1
temp   dw 0

.code

main proc

mov ax, @data
mov ds, ax

mov cx, 5
mov bx, cx

py:
    ;call Print
    sub bx, 1
    call UpperT
    sub cx, 1
    ;mov ah, 02h
    ;mov dl, '*'
    ;int 21h
    call NewLine
    call Print
    cmp cx,0
    mov bx, cx
    jne py




;mov ah, 02h
    ;mov dl, '*'
    ;int 21h
    ;call NewLine
    ;call SizeReader
    ;dec bx
    ;cmp bx, 0
    ;jne py





wq: mov ah, 4ch
    int 21h







Print:  mov ah, 02h
        mov dl, '*'
        int 21h
        call Newline

L2:     add number, 2
        mov bx, number ; 3 3
        sub bx, 2 ;1
        sub number, 2

L3:     mov bx, 0
        add number, 2 ;3
        cmp number, 5
        ja wq

L1:     mov ah, 02h
        mov dl, '*'
        int 21h
        add bx, 1 ;2
        cmp number, bx ; 2, 3
        jne L1
        call NewLine
        je L3
        ret

        ;cmp number, 9
        ;jne Print2

;Print2:
        ;add number, 2
        ;cmp number, 5
        ;jbe Print
        ;ret

UpperT:
    mov ah, 02h
    mov dl, ' '
    int 21h
    cmp bx, 0
    jne py
    ret

SizeReader:
            mov ah, 02h
            mov dl, 'x'
            int 21h
            ret

InputReader: mov ah, 7h
             int 21h
             ret

StringPrint: mov ah, 9h
             int 21h
             ret

NewLine:
    mov dl, 10
    mov ah, 02h
    int 21h
    mov dl, 13
    mov ah, 02h
    int 21h
    ret





main endp
end main

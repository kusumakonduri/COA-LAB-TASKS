org 100h

num1 dw 24h
num2 dw 21h

start:
    mov ax, num1
    mov bx, num2

    mul bx

    mov cx, dx
    call print_word

    mov cx, ax
    call print_word

    mov ah, 4Ch
    int 21h

print_word:
    push ax
    push cx
    push dx

    mov dx, cx
    call print_hex
    mov dx, cx
    mov cx, 4
    shr dx, cl
    call print_hex

    pop dx
    pop cx
    pop ax
    ret

print_hex:
    and dx, 0Fh
    add dl, '0'
    cmp dl, '9'
    jle print_char
    add dl, 7

print_char:
    mov ah, 02h
    int 21h
    ret

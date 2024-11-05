org 100h          ; Set origin to 100h for COM file

mov cx, 26        ; Initialize loop counter for 26 characters (A to Z)
mov bl, 'Z'       ; Start with ASCII value of 'Z'

print_loop:
    mov ah, 02h   ; DOS function to display character
    mov dl, bl    ; Move current character to DL for printing
    int 21h       ; Call DOS interrupt to print character
    dec bl        ; Move to the previous character
    loop print_loop ; Decrement CX and loop if CX != 0

mov ah, 4Ch       ; DOS terminate program
int 21h           ; Call DOS interrupt to terminate

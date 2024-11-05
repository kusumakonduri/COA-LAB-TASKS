org 100h          ; Set origin to 100h for COM file

mov cx, 10        ; Initialize loop counter for 10 numbers (0 to 9)
mov bl, '0'       ; Start with ASCII value of '0'

print_loop:
    mov ah, 02h   ; BIOS interrupt function to display character
    mov dl, bl    ; Move current character to DL for printing
    int 21h       ; Call DOS interrupt to print character
    inc bl        ; Move to the next character
    loop print_loop ; Decrement CX and loop if CX != 0

mov ah, 4Ch       ; DOS terminate program
int 21h           ; Call DOS interrupt to terminate

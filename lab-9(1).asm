org 100h 

mov ah, 01h  
int 21h      
sub al, '0'  
mov bl, al   

mov ah, 01h  
int 21h     
sub al, '0' 

cmp bl, al   
je equal    

mov dx, offset notEqualMsg
mov ah, 09h  
int 21h
jmp end     

equal:

mov dx, offset equalMsg
mov ah, 09h  
int 21h

end:
mov ah, 4Ch  
int 21h

equalMsg db 'Numbers are Equal$', 0
notEqualMsg db 'Numbers are Not Equal$', 0

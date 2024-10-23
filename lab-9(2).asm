org 100h  


mov ah, 01h  
int 21h      
sub al, '0'  

mov ah, al  
and al, 01h 
jz even      

mov dx, offset oddMsg
mov ah, 09h  
int 21h
jmp end     

even:

mov dx, offset evenMsg
mov ah, 09h  
int 21h

end:
mov ah, 4Ch 
int 21h

oddMsg db 'The number is Odd$', 0
evenMsg db 'The number is Even$', 0

.MODEL SMALL
.STACK 100H
.DATA
 a db "Do it again types y or Y $" 

.CODE
MAIN PROC
     
     mov ax,@data
     mov ds,ax  
     
     first:
         
     mov ah,1
     int 21h
     mov bl,al  
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h  
       
     mov ah,2 
     mov dl,bl
     int 21h  
     
      ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h  
       
     reuse:
      mov ah,9
      lea dx,a
      int 21h 
      
     mov ah,1
     int 21h
     
     cmp al,'y' 
     je print  
     
     cmp al,'Y' 
     je print 
     
     jne End  
     
     print: 
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
       
     jmp first 
       
     jmp reuse

    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
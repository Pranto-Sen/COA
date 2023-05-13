.MODEL SMALL
.STACK 100H
.DATA
 a db "input a character $"
.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax    
     
     mov ah,1 
     int 21h  
     
     cmp al,50 
     jge print1 
     jmp other
     
     print1:
     cmp al,57
     jle print2  
     jmp other
     
     mov ah,2 
     ;sub al,48
     mov dl,al
     int 21h 
     
     ;jmp other
     
     print2:
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     
     mov ah,9
     lea dx,a
     int 21h  
     mov ah,1
     int 21h
     mov bl,al
     
      ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,bl
     int 21h  
     jmp End  
     
     other:
     cmp al,65
     jge print3 
     jmp print5 
     
     print3:
     cmp al,122
     jle print4 
     ;jmp print5 
     
     print4:
      ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,'c'
     int 21h 
     jmp End 
     
     print5:
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,'n'
     int 21h
     jmp End 
     

    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
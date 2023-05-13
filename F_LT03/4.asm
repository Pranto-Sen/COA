.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
   
     mov ax,@data
     mov ds,ax    

     MOV AL, 'f'          
     SUB AL, 20h 
          
     mov ah,2
     mov dl,al
     int 21h
        
     
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
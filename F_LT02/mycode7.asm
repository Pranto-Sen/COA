.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax  
     
     mov cx,6
     
     input:    
     mov ah,1
     int 21h 
     loop input 
     
    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
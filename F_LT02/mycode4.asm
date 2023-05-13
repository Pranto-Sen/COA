.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax    
     
     mov cx,30
     
     print:
     mov ah,2
     mov dl,'A'
     int 21h
     loop print

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
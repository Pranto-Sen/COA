.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
   
     mov ax,@data
     mov ds,ax    
     
   
     MOV AL,04h     ; move the value 4h into AL register
     OR AL, 14h      ; set the 3rd and 5th bits by OR operation with 14h (00010100)


    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
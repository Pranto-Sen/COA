.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
   
     mov ax,@data
     mov ds,ax    
     
     MOV BL,00000111B   

     SHR BL,1
  
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
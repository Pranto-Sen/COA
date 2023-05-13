.MODEL SMALL
.STACK 100H
.DATA 
.CODE

MAIN PROC
   
     mov ax,@data
     mov ds,ax    
     
     MOV BL,00000111B   
     
     MOV AH,1  
     INT 21H  
     MOV CL,AL
     SUB CL,48
     
     SHR BL,CL
        
     
    END:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
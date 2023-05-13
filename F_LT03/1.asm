.MODEL SMALL
.STACK 100H
.DATA
msg1 db 'number is even', '$'
msg2 db 'number is odd',  '$'
.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax    
     
 
     mov ah,1
     int 21h
  
     ;mov cl,1
     shr al,1

     jc odd  
     jnc even
  

  even:
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 

    lea dx,msg1
    mov ah,9
    int 21h
    jmp exit 
  

  odd:
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h       
 
    lea dx,msg2
    mov ah,9
    int 21h
          
    
    exit:

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
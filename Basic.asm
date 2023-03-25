.MODEL SMALL
.STACK 100H
.DATA
;THE VARIABLE DECLARED
 in1 db 3
 in2 db 5  

.CODE
;CODE SEGMENT
MAIN PROC
    ;CODE STATEMENT  
     
     mov ax,@data
     mov ds,ax    
     
     ;output   
     mov ah,2  
     add in1,48
     mov dl,in1
     int 21h    
     
     ;New line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h   

     ;input     
     mov ah,1
     int 21h
     mov in3,al

     ;String input
     LEA DX, MSG
     MOV AH, 9
     INT 21h

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

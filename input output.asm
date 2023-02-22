.MODEL SMALL
.STACK 100H
.DATA
;THE VARIABLE DECLARED
 in1 db 3
 in2 db 5  
 in3 db ?
 in4 db ?
.CODE
;CODE SEGMENT
MAIN PROC
    ;CODE STATEMENT  
     
     mov ax,@data
     mov ds,ax    
     
     ;first variable output   
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
     
     ;second variable output 
     mov ah,2  
     add in2,48
     mov dl,in2
     int 21h 
    
     ;third variable input     
     mov ah,1
     int 21h
     mov in3,al
    
     ;third variable Output
     MOV AH,2
     MOV DL,in3
     INT 21H
    
     ;fourth variable input     
     mov ah,1
     int 21h
     mov in4,al  
    
     ;third variable Output
     MOV AH,2
     MOV DL,in4
     INT 21H
     ;String input
     LEA DX, MSG
     MOV AH, 9
     INT 21h

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN

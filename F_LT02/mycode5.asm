.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax    
     
     mov cx,30  
     
     ;first 10
     print:
     mov ah,2  
     mov dl,'A'  
     int 21h 
     
     cmp cx,20
     je New_line
     loop print
     
     New_line:  

     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     ;Second 10
     print2:
     mov ah,2  
     mov dl,'A'  
     int 21h  
     
     cmp cx,10
     je New_line2
     loop print2  
     
     New_line2:  

     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h     
    
     
     ;Third 10
     print3:
     mov ah,2  
     mov dl,'A'  
     int 21h  
     
     cmp cx,0
     je New_line3
     loop print3 
     
     New_line3:  
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h     
   
    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
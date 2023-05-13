.MODEL SMALL
.STACK 100H
.DATA
;THE VARIABLE DECLARED
a db "Carriage_return $"   
b db "Line_feed $"   
c db "Terminate $"
.CODE
;CODE SEGMENT
MAIN PROC
    ;CODE STATEMENT  
     
     mov ax,@data
     mov ds,ax   
     
     mov ah,1
     int 21h
    
     cmp al,'A'
     je carriage_return
     cmp al, 'B'
     je Line_feed 
        
     ;terminate with return code
     mov ah, 4Ch   
     xor al, al 
     int 21h  
     mov ah,9
     lea dx,c
     int 21h
     jmp End 
     
     carriage_return:
    
     mov ah, 2  
     mov dl, 13   
     int 21h  
    
     mov ah,9
     lea dx,a
     int 21h
     jmp End   
     
     
     Line_feed:
   
     mov ah, 2   
     mov dl, 10 
     int 21h  
    
     mov ah,9
     lea dx,b
     int 21h
     jmp End    
     

     
   End:

    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
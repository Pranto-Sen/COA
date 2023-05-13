.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC
     
     mov ax,@data
     mov ds,ax  
     
     mov ah,1
     int 21h 
     
     cmp al,'1' 
     je print_o 
     cmp al,'3'
     je print_o  
     
     cmp al,'2'   
     je print_e
     cmp al,'4'
     je print_e
     
     print_o: 
     mov ah,2
     mov dl,'o'
     int 21h 
     jmp End  
     
     print_e: 
     mov ah,2
     mov dl,'e'
     int 21h
     jmp End 

    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
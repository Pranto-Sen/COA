.MODEL SMALL
.STACK 100H
.DATA

.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax 
     
     mov ah,1
     int 21h
     
     cmp al,49
     je sum
     cmp al,50
     je subt
     cmp al,51
     je print   
     jmp others
     
     sum:
     mov bl,2
     add bl,3 
     add bl,48 
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,bl
     int 21h 
     jmp End
     
     subt:
     mov bl,4
     sub bl,3 
     add bl,48
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,bl
     int 21h   
     jmp End
     
     print: 
     ;new line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,3 
     add dl,48
     int 21h   
     jmp End
     
     others: 
     ;new line
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
     
     mov ah,2
     mov dl,'G'
     int 21h
     
   End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
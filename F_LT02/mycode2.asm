.MODEL SMALL
.STACK 100H
.DATA
a db "Value od DL $"
b db "Value of Cl $"
.CODE

MAIN PROC 
     
     mov ax,@data
     mov ds,ax  
      
     mov ah,9
     lea dx,a
     int 21h
         
     mov ah,1
     int 21h 
     mov bl,al 
     sub bl,48
     
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h  
     
     mov ah,9
     lea dx,b
     int 21h
         
     mov ah,1
     int 21h 
     mov cl,al 
     sub cl,48  
     
     
     cmp bl,3
     jl check 
     jmp End   
     
     mov ah,2
     mov dl,bl
     int 21h
     
     check:
     cmp cl,3
     jl print  
     jmp End
     
     print: 
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h 
        
     mov ah,2 
     mov dl,'b'
     int 21h  
     jmp End
      
    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
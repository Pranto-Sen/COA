.MODEL SMALL
.STACK 100H
.DATA
.CODE

MAIN PROC
   
     mov ax,@data
     mov ds,ax    
     
     mov ah,1
     int 21h  
      
     cmp al,'A' 
     
     jge grater   
     jl less
     
     grater:    
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h    
     
     mov cl,5   
     mov ah,2  
     add cl,48
     mov dl,cl
     int 21h 
     jmp End 
     
     less:  
     mov ah,2
     mov dl,10
     int 21h
     mov dl,13
     int 21h   
     
     mov cl,6   
     mov ah,2  
     add cl,48
     mov dl,cl
     int 21h  
     jmp End 
    
   End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
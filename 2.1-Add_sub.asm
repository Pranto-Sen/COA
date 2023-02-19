.model small
.stack 100h
.data
    msg1 db "Enter first number: $"
    msg2 db "Enter second number: $"
    msg3 db "Addition: $"
    msg4 db "Subtraction: $"

.code   
main proc
    mov ax,@data
    mov ds,ax  
    ;input first number
    lea dx,msg1
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov bl,al   
    
    mov bh,bl
   
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h 
    
    ;input second number
    lea dx,msg2
    mov ah,9
    int 21h 
    
    mov ah,1
    int 21h
    mov cl,al  
     
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    ;Addition
    lea dx,msg3
    mov ah,9
    int 21h  

    add bl,cl 
    sub bl,48
    
    mov ah,2
    mov dl,bl
    int 21h  
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Substraction
    lea dx,msg4
    mov ah,9
    int 21h  

    sub bh,cl
    add bh,48
    
    mov ah,2
    mov dl,bh
    int 21h 


   END: 
    mov ah,4ch
    int 21h
    main endp
end main










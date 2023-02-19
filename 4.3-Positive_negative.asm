.model small
.stack 100h
.data
msg db 0ah,0dh,'Enter a number $'
msg1 db 0ah,0dh,'positive$'
msg2 db 0ah,0dh, 'negative$'
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    lea dx,msg
    mov ah,9
    int 21h

    mov ah,1
    int 21h
    mov bl,al

    mov cl,45


    cmp cl,bl 
    je negative           
    jne positive
    


    negative: 
    
    mov ah,1
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h 
    jmp END

  

    positive:
    lea dx,msg1
    mov ah,9
    int 21h
    jmp END


    END: 
    mov ah,4ch
    int 21h
    main endp
end main
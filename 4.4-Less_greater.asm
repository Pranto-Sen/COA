.model small
.stack 100h
.data
msg db 0ah,0dh,'Enter a number $'
msg1 db 0ah,0dh,'Less than 5 $'
msg2 db 0ah,0dh, 'Greater than 5 $'
.code
main proc
    mov ax,@data
    mov ds,ax  
    
    mov cl,5
                
    mov ah,9
    lea dx,msg
    int 21h

    mov ah,1
    int 21h
    mov bl,al

    sub bl,48
    
    cmp bl,cl
    jl Less
    jg Greater 

    Less:
    mov ah,9
    lea dx,msg1
    int 21h 
    jmp END

    Greater:
    mov ah,9
    lea dx,msg2
    int 21h
    jmp END


    END: 
    mov ah,4ch
    int 21h
    main endp
end main 
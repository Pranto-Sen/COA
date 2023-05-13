.stack 100h
.model small
.data

m1 db "Enter a character $"
m2 db "The Assci of enterd number  $"

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov char,0
    mov dh,0
    mov cl,0
    mov dl,0
    mov bx,0
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    
    mov char,al
    mov bx,al
    
    cmp char,0dh
    je terminate2
    
    mov ah,9
    lea dx,output_msg
    int 21h
    
    mov dh,4
    
    hex_output:
    mov cl,4
    mov dl,bh
    shr dl,cl
    
    cmp dl,9
    jg letter
    add dl,30h
    mov ah,2
    int 21h
    jmp label
    
    letter:
    add dl,37h
    int 21h
    
    label:
    dec dh
    cmp dh,0
    je terminate
    rol bx,cl
    jmp hex_output
    
    terminate:
    jmp input_again
    
    terminate2:
    mov ah,4ch
    int 21h
    main endp
end main
    
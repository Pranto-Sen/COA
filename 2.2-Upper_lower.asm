.model small
.stack 100h
.data

a db "Enter a character in lower case: $"
b db "Enter a character in upper case: $"
c db "Upper case format: $" 
d db "Lower case format: $"

.code

main proc
    mov ax,@data
    mov ds, ax 
    
    ;Taking 1st character from user
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bh,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Taking 2nd character from user
    
    mov ah,9
    lea dx,b
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    

    ;Upper case
    
    mov ah,9
    lea dx,c
    int 21h
    
    mov ah,2
    sub bh,32
    mov dl,bh
    int 21h
    
    ;new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ;Lower case
    
    mov ah,9
    lea dx,d
    int 21h
    
    mov ah,2
    add bl,32
    mov dl,bl
    int 21h
    
    
    
    mov ah,4ch
    int 21h
    main endp
end main
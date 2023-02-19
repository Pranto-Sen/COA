.model small
.stack 100h

.data
a1 db 'P'
a2 db 'R'    
a3 db 'A'
a4 db 'N'
a5 db 'T'
a6 db 'O'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,2
    mov dl,a1
    int 21h
    
    mov ah,2
    mov dl,a2
    int 21h
    
    mov ah,2
    mov dl,a3
    int 21h
    
    mov ah,2
    mov dl,a4
    int 21h
    
    mov ah,2
    mov dl,a5
    int 21h
    
    mov ah,2
    mov dl,a6
    int 21h
    
    
    mov ah,4ch
    int 21h
    main endp
end main

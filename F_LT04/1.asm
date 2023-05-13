.stack 100h
.model small
.data

m1 db "Enter a character $"
m2 db "Assci code $"

.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,m1
    int 21h
    
    mov ah,1
    int 21h
    mov c1,al
    mov c3,al
    
    mov ah,9
    lea dx,m2
    int 21h
    mov ah,2
    mov cx,8
    
    Top:
    shl c1,1
    jc set
    mov dl,'0'
    int 21h
    jmp label
    
    set:
    mov ah,2
    mov dl,'1'
    int 21h
    jmp Top
    
    Label:
    Loop Top
    
    mov ah,9
    lea dx,m3
    int 21h
    mov al,0
    mov cx,8
    Top1:
    rol c3,1
    jnc next
    inc al
    
    Next:
    loop Top1
    mov ah,2
    mov dl,al
    add dl,30h
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main
    
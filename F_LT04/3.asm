.stack 100h
.model small
.data

m1 db "Enter a binary string $"
m2 db "invalid input enter the string again  $"

.code
main proc
    mov ax,@data
    mov ds,ax 
    
    mov ah,9
    lea dx,m1
    int 21h
    
    input:
    mov cx,0
    mov bx,0
    mov ax,0
    mov ah,1
    
    while_:
    int 21h
    cmp al,'0'
    jne error
    
    continue:
    mov cx,16
    
    shift:
    add al,01h
    shl bx,1
    or bl,al
    loop while_
    
    error:
    cmp al,'1'
    je continue
    cmp al,0dh
    je output
    mov ah,9
    lea dx,m2
    int 21h
    jmp input
    
    output:
    mov ah,9
    lea dx,msg
    int 21h
    mov ah,2
    mov dh,4
    hex_output:
    mov al,4
    mov dl,bh
    shr dl,cl
    
    cmp dl,9
    jg letter
    add dl,30h
    int 21h
    jmp label
    
    letter:
    add dl,37h
    int 21h
    
    label:
    rol bx,cl
    dec dh
    cmp dh,0
    je exit
    jmp hex_output
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
.MODEL SMALL
.STACK 100H
.DATA


.CODE
;CODE SEGMENT
MAIN PROC
     

     mov ax,0
     mov bx,1
     mov cx,2
     
     cmp ax,bx  
     jl less
     cmp bx,cx
     jl less2
     mov cx,0
     jmp End
     
     less:
     mov ax,0
     jmp End
     
     less2:
     mov bx,0
     jmp End
     
    End:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
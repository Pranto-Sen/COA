.MODEL SMALL
.STACK 100H

.CODE
   MAIN PROC
    mov ax,0
    mov bx,1
    mov cx,2 

    cmp ax,bx
    jl less
    cmp bx,cx
    jl less2
    mov cx,0
    jmp end_



    less:
    mov ax,0 
    jmp end_

    less2:
    mov bx,0
    jmp end_
  
     end_:
     MOV AH, 4CH                
     INT 21H
   MAIN ENDP
END MAIN
.MODEL SMALL
.STACK 100h
.DATA

msg DB 0AH,0DH,'Enter a character $'

.CODE

MAIN PROC

MOV AX,@DATA
MOV DS,AX   

lea dx,msg
mov ah,9
int 21h 

mov ah,1
int 21h
mov bh,al  

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h   

MOV CX,50

start:   

mov ah,2
mov dl,bh
int 21h

loop start 

Exit:
MOV AH,4CH
INT 21h


MAIN ENDP
END MAIN
.model small
.stack 100h
.data

.code
main proc

mov ah,2
mov dl,"?"
int 21h 

mov ah,1
int 21h
mov bh,al  
mov bl,bh 

;new line
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,1
int 21h
mov ch,al 
mov cl,ch 


add bl,cl
sub bl,48   

;new line
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

;mov ah,2
;mov dl,bl
;int 21h   

;new line
mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

mov ah,2
mov dl,"S"
int 21h  

mov ah,2
mov dl,"u"
int 21h 

mov ah,2
mov dl,"m"
int 21h  

mov ah,2
mov dl," "
int 21h  

mov ah,2
mov dl,"o"
int 21h  

mov ah,2
mov dl,"f"
int 21h  

mov ah,2
mov dl," "
int 21h

mov ah,2
mov dl,bh
int 21h 

mov ah,2
mov dl," "
int 21h  

mov ah,2
mov dl,"a"
int 21h  

mov ah,2
mov dl,"n"
int 21h  

mov ah,2
mov dl,"d"
int 21h

mov ah,2
mov dl," "
int 21h 
 
mov ah,2
mov dl,ch
int 21h     

mov ah,2
mov dl," "
int 21h 

mov ah,2
mov dl,"="
int 21h   

mov ah,2
mov dl," "
int 21h 
 
mov ah,2
mov dl,bl
int 21h 

mov ah,4ch
int 21h
main endp
end main


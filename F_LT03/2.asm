.MODEL SMALL
.STACK 100H
.DATA

 value DB 000001111b  
 case_value DB 1    
.CODE

MAIN PROC
   START:

    MOV AL, case_value

    CMP AL, 1    ; Set bit 3
    JE SET_BIT  
    
    CMP AL, 2    ; Clear bit 2
    JE CLEAR_BIT  
    
    CMP AL, 3    ; Complement bit 1
    JE COMPLEMENT_BIT

    JMP END_PROGRAM

SET_BIT:
    OR value, 000001000b
    JMP END_PROGRAM

CLEAR_BIT:
    AND value, 011111011b
    JMP END_PROGRAM

COMPLEMENT_BIT:
    XOR value, 000000010b
    JMP END_PROGRAM

END_PROGRAM:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
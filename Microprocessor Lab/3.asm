INCLUDE EMU8086.INC
.MODEL SMALL
.STACK 100H
.CODE
MAIN PROC
    
    ;PRINT "ENTER FIRST NUMBER:"
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    PRINTN
    
    ;PRINT "ENTER SECOND NUMBER:"
    MOV AH,1
    INT 21H
    MOV CL,AL
    
    ADD BL,CL
    SUB BL,48
    
    PRINTN
    
    PRINT "OUTPUT:"
    MOV AH,2
    MOV DL,BL
    INT 21H
EXIT:
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

PRINT MACRO P
    MOV AH,9
    LEA DX,P
    INT 21H
ENDM

.MODEL SMALL
.STACK 100H
.DATA
STR1 DB "Enter input: $"
STR2 DB "Entered Inputs are: $" 
ARR DB 10 DUP (?)
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    PRINT STR1
    MOV SI,1
    
    INPUT:
    ;INC CL 
    MOV AH,1
    INT 21H 
    MOV ARR[SI],AL
    INC SI
    MOV BL,AL
    
    CMP BL,0DH
    
    JNE INPUT
    CALL NEW_LINE
    PRINT STR2 
    CALL NEW_LINE
    
    MOV CX,SI
    LOOPS: 
    MOV AL,ARR[SI]
    MOV AH,2
    MOV DL,AL
    INT 21H
    DEC SI
    LOOP LOOPS
    
    
    MOV AH,4CH
    INT 21H
ENDP


New_Line PROC
    MOV AH,2
    MOV DX,10
    INT 21H       
    MOV AH,2		 
    MOV DX,13
    INT 21H
    RET 
    ENDP
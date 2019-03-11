
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
VAR DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    PRINT STR1
    MOV CX,0
    MOV VAR, 0

    
    INPUT:
    INC CL 
    MOV AH,1
    INT 21H
    
    ;SUB AL,48 
    PUSH AX
    
    MOV BL,AL
    
    ;ADD VAR,AL
    
    CMP BL,0DH
    
    JNE INPUT
    CALL NEW_LINE
    PRINT STR2 
    CALL NEW_LINE
    
    
    LOOPS: 
    POP DX
    MOV AH,2
    ;MOV DL,AL
    INT 21H
    MOV BL,AL
    SUB BL,48
    ADD VAR,BL
    
    LOOP LOOPS
    
    CALL NEW_LINE
    
    ;MOV BL,VAR
    ADD VAR,48
    MOV AH,2
    MOV DL,VAR
    INT 21H
    
    
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
.model small
.stack 100h
.data  
 A DB 1,2,3,4,5
 B DB ?
.CODE

MAIN PROC
    
    MOV AX,@DATA
    MOV DS,AX
    
    MOV AL,0
    MOV CX,4
    MOV DI,0
    
    SUM:
    MOV AL,A[DI]
    ADD AL,A[DI+1]
    
    MOV AH,2
    ADD AL,48
    MOV DL,AL
    INT 21H
    
    INC DI
    DEC CX
    
    CMP CX,0
    JNE SUM
    
    END MAIN
    MAIN ENDP 

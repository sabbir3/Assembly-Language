.MODEL SMALL
.STACK 100H
.DATA
    STR1 DB 'SABBIR$'
    STR2 DB 'AHMED$'
    
 .CODE
 
    MAIN PROC
        
        MOV AX,@DATA ;INITIALIZATION OF DATA SEGMENT
        MOV DS,AX
        
        LEA DX,STR1  ;LOAD EFFECTIVE ADDRESS
        MOV AH,9
        INT 21H
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        
         LEA DX,STR2
         MOV AH,9
         INT 21H
         
         EXIT:
         MOV AH,4CH
         INT 21H
         MAIN ENDP
    END MAIN
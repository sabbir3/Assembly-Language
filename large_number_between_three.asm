.MODEL SMALL
.STACK 100H
.DATA
.CODE
    MAIN PROC
        
        MOV AH,1
        INT 21H
        MOV BL,AL
        INT 21H
        MOV BH,AL
        INT 21H
        MOV CL,AL
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        CMP BL,BH
        JGE L2
        
        L1:
        
        CMP BH,CL
        JGE LL1
        MOV AH,2
        MOV DL,CL
        INT 21H
        
        JMP EXIT
        
        LL1: 
        MOV AH,2
        MOV DL,BH
        INT 21H
        JMP EXIT
        
        L2:
        CMP BL,CL
        JMP LL2 
        MOV AH,2
        MOV DL,CL
        INT 21H
        JMP EXIT
        
        LL2: 
        MOV AH,2
        MOV DL,BL
        INT 21H
        JMP EXIT
         
        
        EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN
        
        
        
        
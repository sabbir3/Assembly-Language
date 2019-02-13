.MODEL SMALL
.STACK 100H 
.DATA  
    STR1 DB "ENTER 1ST NUMBER =$"
     STR2 DB "ENTER 2ND NUMBER =$"
      STR3 DB "DESIRED RESULT =$"
      
.CODE
    MAIN PROC
        
        MOV AX,@DATA
        MOV DS,AX
        
        MOV AH,9
        LEA DX,STR1
        INT 21H
        
        MOV AH,1 
        INT 21H
        SUB AL,48
        
        MOV BL,10
        MUL BL
        MOV CL,AL
        
        
        MOV AH,1 
        INT 21H
        SUB AL,48
        ADD CL,AL
        MOV BH,CL 
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        MOV AH,9
        LEA DX,STR2
        INT 21H  
        
        MOV AH,1 
        INT 21H
        SUB AL,48
        
        MOV BL,10
        MUL BL
        MOV CL,AL
        
        
        MOV AH,1 
        INT 21H
        SUB AL,48
        ADD CL,AL
        ADD CL,BH
        
        MOV AX,0
        MOV AL,CL
        DIV BL
        MOV CL,AL
        MOV BL,AH
        
        
        ADD CL,48
        ADD BL,48
        
        MOV AH,2
        MOV DL,0AH
        INT 21H
        MOV DL,0DH
        INT 21H
        
        MOV AH,9
        LEA DX,STR3
        INT 21H 
        
        MOV AH,2
        MOV DL,CL
        INT 21H
        MOV DL,CL
        INT 21H
        
        
        EXIT:
        MOV AH,4CH
        INT 21H
        MAIN ENDP
    END MAIN
        
        
       
        
             
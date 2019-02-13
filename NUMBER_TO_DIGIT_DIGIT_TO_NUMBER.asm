
PRINT MACRO P
    MOV AH,9
    LEA DX,P		
    INT 21H
    ENDM
.model slamm
.stack 100h 
.DATA
str1 DB "Enter 1ST NUMBER: $"
str2 DB "Enter 2ND NUMBER: $"



.code

    main proc 
        
              MOV AX,@DATA
              MOV DS,AX
                      
                      
              PRINT str1        
              MOV AH,01H
              INT 21H
              
             
           
              
               
              SUB AL,48
              MOV BL,10
              MUL BL 
              MOV CL,AL
               ;;;;;;;;
              MOV AH,2
              MOV DL,0AH
              INT 21H
              MOV DL,0DH
              INT 21H 
                      
              PRINT str2        
              
              MOV AH,01H
              INT 21H 
              SUB AL,48 
              ADD CL,AL
              
             
           
              
              MOV AX,0
              MOV AL,CL
              DIV BL
              MOV BL,AL
              
              MOV CL,AH 
              
               ;;;;;;;;
              MOV AH,2
              MOV DL,0AH
              INT 21H
              MOV DL,0DH
              INT 21H
              
              
              MOV AH,2
              MOV DL,BL
              ADD DL,48
              INT 21H  
              
              MOV AH,2
              MOV DL,CL
              ADD DL,48
              INT 21H
              
            
            
           
          
        
               

       
        mov ah,4ch
        int 21h
        main endp
    end main
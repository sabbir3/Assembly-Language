.model slamm
.stack 100h

.code

    main proc
              
              mov bl,0
              mov ah,1
            
            top:
           
            int 21h
            inc bl
            
            cmp al,121
            jne top
         
            
            mov ah,2
            mov dl,0ah
            int 21h
            mov dl,0dh
            int 21h 
            
            mov dl,bl
            add dl,48
            mov ah,2
            int 21h 
            
           
          
            
               

       
        mov ah,4ch
        int 21h
        main endp
    end main
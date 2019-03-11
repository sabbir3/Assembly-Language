.model small
.stack 100h
.code 
    main proc
        
        
        mov ah,1
        int 21h
        mov bl,al
        sub al,48
        
        
        loop:
        mov cx,0
        mov cl,al
        mov ah,2
        mov dl,'*'
        
        top:
        int 21h
        loop  top 
        
        
        exit:
        
        mov ah,4ch
        int 21h
        main endp
    end main
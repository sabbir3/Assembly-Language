.model small
.stack 100h
.data
    str1 db 'Enter a charater:$'
    dec1 db 0dh, 0ah, 'Its capital.$'
    dec2 db 0dh, 0ah, 'Its not capital.$'

.code
    main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al
    
    
    cmp bl, 65
    jnge No_dec
    
    cmp bl, 90
    jnle No_dec
    
        
        mov ah, 9
        lea dx, dec1
        int 21h
        jmp end
        
    No_dec:
        
        mov ah, 9
        lea dx, dec2
        int 21h
    
    end:
        mov ah, 4ch
        int 21h
    
        main endp
        end main
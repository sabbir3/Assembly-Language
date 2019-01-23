.model small
.stack 100h
.data
    str1 db 'Enter First num:$'
    str2 db 0dh, 0ah, 'Enter Second num:$'
    str3 db 0dh, 0ah, 'Biggest number:$'

.code
    main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, str1
    int 21h
    
    mov ah, 1
    int 21h
    ;sub al, 48
    mov bl, al
    
    mov ah, 9
    lea dx, str2
    int 21h
    
    mov ah, 1
    int 21h
    ;sub al, 48
    mov cl, al
    
    mov ah, 9
    lea dx, str3
    int 21h   
    
    cmp cl, bl
    jg big
    
        
        mov ah, 2
        mov dl, bl
        int 21h
        jmp end
        
    big:
        
        mov ah, 2
        mov dl, cl
        int 21h
    
    end:
        mov ah, 4ch
        int 21h
    
        main endp
        end main
org 100h
.model small
.stack 100h
.data 
    x db 0
    
    .code
        mov ah,1 ;input
        int 21h  
        mov x,al 
        
        mov ah,2
        mov dl,0dh ;carage return
        int 21h 
        mov dl,0ah ;line feed
        int 21h
        
        
        mov ah,2  ;output
        mov dl,x
        int 21h
        
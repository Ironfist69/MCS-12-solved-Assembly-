;Write a program using 8086 assembly
;language that finds the larger of two byte
;values stored in two memory locations
;named A and B respectively. The larger
;of two values should be stored in AL
;register

.model small
.stack 100h

.data
    A db ?      ;Byte variable A
    B db ?      ;Byte variable B
.code
    mov ax,@data
    mov ds,ax
    
    ;Loading value of A into AL register
    mov si, offset A
    mov al,[si]
    ;Loading value of B into BL register
    mov si, offset B
    mov bl,[si]
    
    cmp al,bl
    jge al_bigger   ;if al>=bl
    mov al,bl       ;else load bl to al
    jmp end_of_program
    al_bigger:
        mov al,[si]  ;load value of A into AL
    end_of_program:
        mov ah,4ch
        int 21h
end
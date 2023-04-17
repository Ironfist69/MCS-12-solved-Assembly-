;Write a program using 8086 assembly
;language that moves content of byte
;memory location X1 and X2 to AL and BL
;registers. The program then finds the
;larger value of AL or BL register and
;stores it in DL register

;This mtfker moves content of byte memory location X1 and X2 to AL and BL registers. The program then finds the larger value of AL or BL register and stores it in DL register
.model small
.stack 100h

.data
    x1 db 45h
    x2 db 3fh
.code
    mov ax,@data
    mov ds,ax
    mov al,[x1]
    mov bl,[x2]
    cmp al,bl
    jge al_bigger
    mov dl,bl
    jmp end_of_program
    al_bigger:
        mov dl,al
    end_of_program:
        mov ah,4ch
        int 21h
end
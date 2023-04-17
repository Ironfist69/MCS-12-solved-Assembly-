;Write a program in 8086 assembly
;language that stores (FEDC)h in AX
;register and (BA98)h in BX register. It then
;stores the values of AL, AH, BL and BH in
;four consecutive byte locations in the
;memory. Make suitable assumptions


;This sucker stores (FEDC)h in AX register and (BA98)h in BX register. It then stores the values of AL, AH, BL and BH in four consecutive byte locations in the memory. Make suitable assumptions

.model small
.stack 100h

.data
    memory db 4 dup (?)    ;Defined four consecutive byte locations in memory
.code
    mov [memory],al
    mov [memory]+1,ah
    mov [memory]+2,bl
    mov [memory]+3,bh
    mov ah,4ch
    int 21h
end
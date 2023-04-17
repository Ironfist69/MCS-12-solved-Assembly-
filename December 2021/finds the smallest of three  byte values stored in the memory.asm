;Write a program in 8086 assembly
;language that compares the two byte
;values stored in two consecutive memory
;locations. The bigger of the two values is
;put in AL register

;This fucker compares the two byte values stored in two consecutive memory
.model small
.stack 100h

.data
    value1 db 45h       ;First value
    value2 db 3fh       ;Second value
.code
    mov ax,@data        ;Initialize data segment
    mov ds,ax
    
    mov al,[value1]     ;moving first value to al register
    cmp al,[value2]     ;comparing both
    jnc bigger_value    ;jump to bigger_value if value1 is greater than or equal to value2
    mov al,[value2]     ;move value2 to al register if value2 is greater than value1
    
    bigger_value:
    ;Do nothing
    
    mov ah,4ch          ;DOS function to terminate
    int 21h             ;Call DOS
end

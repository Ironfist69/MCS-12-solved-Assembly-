;Q1 . h 
;Write a program using 8086 assembly
;language that converts an ASCII digit
;stored in a memory location to equivalent
;binary value. This binary value should be
;stored in AL register


;This assembly program coverts ASCII to binary
.model small
.stack 100h
.data
    digit db '9' ;ASCII digit
.code
    mov ax, @data   ;Initiating data segment
    mov ds,ax
    mov al,[digit]  ;move ASCII digit to al register
    sub al,30h      ;subtracting 30h for binary value
    mov al,4ch      ;DOS fucntion to terminate
    int 21h         ;call DOS
end

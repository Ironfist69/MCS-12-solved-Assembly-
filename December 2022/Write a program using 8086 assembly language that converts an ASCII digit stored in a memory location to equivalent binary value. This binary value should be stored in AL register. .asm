ORG 100h          ; set the origin of the program

MOV AH, 00h       ; clear AH register
MOV SI, OFFSET input ; load the memory location of input into SI register
MOV AL, [SI]      ; load the ASCII digit into AL register
SUB AL, 30h       ; convert ASCII digit to binary value by subtracting 30h (ASCII code for '0')

RET               ; return from the program

input DB '5'      ; example input digit1
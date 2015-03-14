
; Store data to memory

jmp start

;data


;code
start: nop
	MVI B, 34h
	LXI H, 2051h
	; Copy contents of register to memory
	; address present in HL 
	MOV M, B

	LXI H, 2054h
	; Copy 8 bit data to memory address
	; present in HL
	MVI M, 23h

	LXI D, 2052h
	MOV A, B
	; Copy contents of accumulator to memory
	; address present in register pair BC or
	; DE
	STAX D

	; Copy contents of accumulator to memory
	; address specified
	STA 2053h

hlt

; Loading contents of memory address into
; microprocessor.
;
; Debug the code line by line for better
; understanding

jmp start

;data


;code
start: nop
	; Load 16bits imediate
	; 3 byte instruction
	LXI H, 2050h
	; Move contents of memory, address
	; presnt in HL pair to A
	; 1-byte instruction
	MOV A, M

	LXI B, 2050H
	; Load accumulator with contents of
	; memory address present in register
	; pair, either BC or DE
	LDAX B

	; Load accumulator direct, with contents
	; present in 16 bit address
	LDA 2050h

hlt
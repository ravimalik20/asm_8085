
;understanding logical or operation
;
; similarly like and, or is different than
; hardwired or operation
;
; ORA <register>

jmp start

;data


;code
start:	MVI A, 04h
	MVI B, 80h

	; 1-byte instruction
	ORA B
	OUT 01h

hlt
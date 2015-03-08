
;understanding the subtraction operations
;subtraction is done in 8085 via. 2's complement
;Process followed is:
;	A - B
;	Find out 2's complement of B
;	add 2's complement B to A
;	complement the carry flag

jmp start

;data


;code
start:	MVI A,30h
	MVI B,39h

	; subtract contents of register B with A
	SUB B
	OUT 01h

hlt
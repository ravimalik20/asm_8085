
; Understanding rotatate operations
;
; Two ways to be rotated: left/right and further
; two ways with each type, to involve C flag in
; rotation or not
;
; RLC : Rotate accumulator left
; RAL : Rotate accumulator left through carry
;
; RRC : Rotate accumulator right
; RAR : Rotate A right through carry
;
; RLC: each bit shifted left, d7 becomes d0.
;	carry flag is set
; RAL: each bit shifted left, d7 becomes carry
;	and carry becomes d0. Carry flag is set
;	according to d7

jmp start

;data


;code
start: nop
	MVI A, 0ffh

	; checking if sign bit is set
	RAL
	JC output

	hlt

output: STA 0001h

hlt
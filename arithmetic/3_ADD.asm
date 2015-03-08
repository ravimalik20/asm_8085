
;Understand the working of addition instructions
; Add the contents of register with accumulator

jmp start

;data


;code
start:	MVI A,93h
	MVI C,0b7h

	; Adds the content of register C with A
	ADD C
	OUT 01h

hlt
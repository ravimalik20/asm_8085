
;Understanding logical or
;
; ORI or imediate
; Ors the data byte with A

jmp start

;data


;code
start:	MVI A,04h
	; 2-byte instruction
	ORI 40h

	OUT 01h

hlt
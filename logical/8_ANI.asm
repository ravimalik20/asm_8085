
;understanding logical and
;
; ANI And imediate
; Ands the data byte with A
; resets the C flag and sets the AC 

jmp start

;data


;code
start:	MVI A,04h
	; 2-byte instruction
	ANI 0a4h

	OUT 01h

hlt

; First program. Learning to __copy__ data to a
; register.

; MVI (Move Imediate) to copy data byte to a
; specific register.
; Syntax MVI <register>, <data>
;
; MOV to copy the contents of one register to
; another
; Syntax MOV <dest_register>, <src_register>
jmp start

;data


;code
start:	MVI A,0afh	; 2-byte instruction
	MOV B,A		; 1-byte instruction
	MOV C,A		; 1-byte instruction

	MVI D,04h
	MOV E,D

hlt
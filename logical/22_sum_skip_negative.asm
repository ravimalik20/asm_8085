
; Program to generate sum of positive numbers
; only.

jmp start

;data


;code
start: nop
	LXI H, 0000h
	MVI B, 0ah ; loop-counter

	MVI E, 00h ; low-order byte
	MVI D, 00h ; high-order byte
begin:	MOV A, M
	; check if negative/positive
	RAL
	JC inr_counter

	; Add the sum
	RAR
	ADD E
	MOV E, A
	; if overflow then output
	JC output_hlt

inr_counter:	INX H
		DCR B
		JNZ begin
		JZ end

output_hlt:	OUT 01h

end:	hlt


hlt
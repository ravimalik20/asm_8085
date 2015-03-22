
;<Program title>

jmp start

;data


;code
start: nop

	MVI C, 00h ; low order byte
	MVI B, 00h ; high order byte
	MVI D, 06h ; loop counter
	LXI H, 0000h
begin:	MOV A, M
	ADD C
	MOV C, A
	JC increment_b

inr_counter:	INX H
		MOV A, D
		SUI 01h
		MOV D, A
		JNZ begin
		JZ end

increment_b:	INR B
		JMP inr_counter

end:	hlt
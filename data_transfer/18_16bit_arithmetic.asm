
; 16 bit arithmetic
;
; Program demonstrating 16 bit arithmetic by
; copying data from successive memory locations
; to other.
;
; Incrementing and Decrementing

jmp start

;data


;code
start: nop
	MVI B, 23h
	MVI C, 0ah

	LXI H, 0000h
begin:	MOV M, B
	INX H

	MOV A, B
	ADI 01h
	MOV B, A

	MOV A, C
	SUI 01h
	MOV C, A
	JNZ begin

	MVI H, 0ah
	LXI D, 0000h
	LXI B, 0015h
begin2:	LDAX D
	INX D
	STAX B
	DCX B

	MOV A, H
	SUI 01h
	MOV H, A
	JNZ begin2

hlt
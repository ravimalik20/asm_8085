
; 16bit data transfer instructions
;
; LXI <register_pair>, <16 bit data>
; LXi B, 2354h
;
; Register pairs are specified by their initial
; register, like BC by B, DE by D, HL as H.
; Data can also be transfered to stack pointer
; denoted by SP
;
; Second byte of data is stored in lower-order
; register and first byte is stored in high 
; order register.

jmp start

;data


;code
start: nop
	LXI H, 2050h
	MVI B, 20h
	MVI C, 50h

hlt
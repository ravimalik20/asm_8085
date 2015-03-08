
;Conditional jumps
;
; Used to jump to a label/address after checking
; the atatus of the flags
;
; 8085 has 5 flags out of which 4 are accessible
; to the programmer
; C, S, P, AC, Z : AC not available for test
;
; So, we have 2 instructions for each flag to
; check if its set or reset
;
; JC : jump if carry but set
; JNC : jump if carry bit reset
; JP : jump on plus sign bit
; JM : jump on minus sign bit
; JPE : jump on parity even
; JPO : jump on parity odd
; JZ : jump on zero
; JNZ : jump on non zero

jmp start

;data


;code
start: nop
	MVI A, 9bh
	MVI B, 0a7h
	ADD B

	JNC display_sum

	MVI A, 01h

display_sum: OUT 01h

end: hlt
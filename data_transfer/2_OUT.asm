
; Transfer data to register and then output that
; data to the output port

; Data byte is first transfered from the
; register to the accumulator. This is because 
; a microprocessor can output data to an output 
; port which is present in the accumulator.
;
; To transfer data to output port we use
; instruction OUT which transfers the data of
; A to output port
; Syntax OUT <out_port_address>
;
; this can also mean turn on the pins
; of the output port which can be connected
; to the devices which will get turned on

jmp start

;data


;code
start:	MVI B, 5fh
	MOV A, B

	; output the contents of accumulator to
	; output port identified by address 01h
	; It would take 3 machine cycles namely
	; opcode fetch, memory read and I/O 
	; write and a total of 10 T-states.	
	OUT 01h

hlt




			.include "gpio_reg.s"
			.include "macros.s"

			.global main
			.text


main:
			BL  PortF_Init
Loop1		BL  led_toggle
			BL  delay
			B   Loop1


led_toggle:
			LDR32 R1, GPIO_PORTF_DATA_R   	; (1) pointer to Port F Data Register
			LDR   R0, [R1] 					; (2) read all of Port F
			EOR   R0, R0, #0x01				; (3) NOT a bit 0, guarda en R0
			LDR32 R1, GPIO_PORTF_DATA_R		; (4) escribe en el reg de datos
			STR   R0, [R1]
			BX    LR


PortF_Init:
		    LDR32 R1, SYSCTL_RCGCGPIO_R		; 1) activate clock for Port F
			LDR   R0, [R1]
			ORR   R0, R0, #0x20 			; set bit 5 to turn on clock
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTF_DIR_R		; 2) set direction register
			MOV   R0, #0x01					; PF0 output
			STR   R0, [R1]

			LDR32 R1, GPIO_PORTF_DEN_R		; 3) enable Port F digital port
			MOV   R0, #0x1					;    1 means enable digital I/O
			STR   R0, [R1]
			BX    LR

delay:
			LDR32 R8, 0x2FFFF		; CONTADOR: 196,607 * T_clock =
dl_loop		        SUBS  R8, #1			;
			BNE   dl_loop
			BX    LR


			.end



#define GPIO_PORTF_DATA_BITS_R 0x4005D000
#define GPIO_PORTF_DIR_R   (*(volatile unsigned int *)0x4005D400)
#define GPIO_PORTF_DEN_R   (*(volatile unsigned int *)0x4005D51C)
#define SYSCTL_RCGCGPIO_R  (*(volatile unsigned int *)0x400FE608)
#define SYSCTL_PRGPIO_R    (*(volatile unsigned int *)0x400FEA08)
#define PORTbit4 0x40
#define PORTbit0 0x04
#define PORTFbits (GPIO_PORTF_DATA_BITS_R|PORTbit4|PORTbit0)
#define PF40 (*(volatile unsigned int *)PORTFbits)   //#define PF21 (*(volatile uint32)0x4005D044)

#define GPIO_PORTJ_DATA_BITS_R  0x40060000
#define GPIO_PORTJ_DIR_R        (*(volatile unsigned int *)0x40060400)
#define GPIO_PORTJ_DEN_R        (*(volatile unsigned int *)0x4006051C)
#define GPIO_PORTJ_PUR_R        (*(volatile unsigned int *)0x40060510)
#define PJ0                     (*(volatile unsigned int *)(GPIO_PORTJ_DATA_BITS_R|PORTbit0))

void main(void){
	// Habilita reloj en Puerto F y J
	SYSCTL_RCGCGPIO_R |= ;   //(a)

	// Espera a que esté listo el puerto
	while((SYSCTL_PRGPIO_R & 0x120)==0);

	// Bits 4 y 1 del PTO F como salidas, los demas bits entradas
	GPIO_PORTF_DIR_R |=   ;      // (b)

	// Habilita el modo Digital de los pines 4 y 1 Puerto F
	GPIO_PORTF_DEN_R |=  ;  // (c)

	// Bit PJ0 como entrada, Habilita resistencia de Pull-up PJ0
	GPIO_PORTJ_DIR_R |=     ;   // (d)
	GPIO_PORTJ_PUR_R |=     ;   // (e)

	// Habilita Modo digital PJ0
	GPIO_PORTJ_DEN_R |=     ;   // (f)

	// valor inicial de los pines (hay Leds conectados en la tarjeta)
	PF40 = 0x01;	// PF4 = 0, PF0 = 1

	while(1){
		if(!PJ0) {
			//while (!PJ0);         // (g) -> Escriba el valor de la mascara para
			PF40 ^=    ;		// cambiar el estado lógico de los pines 4 y 1
		}
	}


}

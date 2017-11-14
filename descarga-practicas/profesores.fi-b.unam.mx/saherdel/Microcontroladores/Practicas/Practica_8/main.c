

#define GPIO_PORTF_DATA_BITS_R 0x4005D000
#define GPIO_PORTF_DIR_R   (*(volatile unsigned int *)0x4005D400)
#define GPIO_PORTF_DEN_R   (*(volatile unsigned int *)0x4005D51C)
#define SYSCTL_RCGCGPIO_R  (*(volatile unsigned int *)0x400FE608)
#define SYSCTL_PRGPIO_R    (*(volatile unsigned int *)0x400FEA08)
#define PORTbit4 0x40
#define PORTbit0 0x04
#define PORTFbits (GPIO_PORTF_DATA_BITS_R|PORTbit4|PORTbit0)
#define PF40 (*(volatile unsigned int *)PORTFbits)   //#define PF21 (*(volatile uint32)0x4005D044)

void main(void){
	// Habilita reloj en Puerto F
	SYSCTL_RCGCGPIO_R |= ;      // (a)

	// Espera a que esté listo el puerto
	while((SYSCTL_PRGPIO_R & 0x20)==0);

	// Bits 4 y 1 del PTO F como salidas, los demas bits entradas
	GPIO_PORTF_DIR_R |= ;	 	// (b)

	// Habilita el modo Digital de los pines 4 y 1
	GPIO_PORTF_DEN_R |= ;           // (c)

	// valor inicial de los pines (hay Leds conectados en la tarjeta)
	PF40 = 0x01;	// PF4 = 0, PF0 = 1

	while(1) {
		// insertar un BREAKPOINT EN LA SIG. LINEA Y EJECUTAR (TECLA F8)
		PF40 ^= 0x11;		// cambia el estado lógico de los pines 4 y 1
		// insertar aquí un retardo
	}


}

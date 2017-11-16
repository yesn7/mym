
#include "regs.h"

#define PK    GPIO_PORTK_DATA_R  	// bits 7-0 puerto K
#define PL0 (*((volatile uint32_t *)(0x40062000|0x04)))	// bit 0 Puerto L
#define PL1 (*((volatile uint32_t *)(0x40062000|0x08)))	// bit 1 Puerto L
#define PL2 (*((volatile uint32_t *)(0x40062000|0x10))) // bit 2 Puerto L

#define LCD_RS    PL0
#define LCD_RW	  PL1
#define LCD_EN	  PL2
#define LCD_DATA  PK

void delay_lcd(void){
	unsigned int i;
	for(i=0; i<10000; i++){

	}
}

void ports_init(void){
	SYSCTL_RCGCGPIO_R |= 0x600; // activa reloj en PTO M y H, N
	// Espera a que esté listo el puerto
	while((SYSCTL_PRGPIO_R & 0x600)==0);

	// Bus de datos
	// PORT K7-K0
	                     // todos bits LSB salida
	   	             // todos digitales


	// Lineas de control
	                                 // 3 bits LSB salida
	                                 // 3 bits lsb  digitales



}


void modo_comando(void){
	LCD_RS = 0;		//RS=0 modo comando
	LCD_RW = 0;
	LCD_EN = 0x04; // activa bit 2
	delay_lcd();
	LCD_EN = 0;

}

void modo_caracter(void){
	LCD_RS = 1;		//RS=1 modo caracter
	LCD_RW = 0;
	LCD_EN = 0x04;  // activa bit 2
	delay_lcd();
	LCD_EN = 0;

}
void LCD_command(unsigned char cmd){
	LCD_DATA = cmd;
	modo_comando();

}

void LCD_on(void){
	LCD_command(0x0C);
}


void LCD_clear(void){
	LCD_command(0x01);
}

void LCD_display_all_cursor(void){
	LCD_command(0x0F);
}

void LCD_home(void){
	LCD_command(0x03);
}

void LCD_character(unsigned char a){
	LCD_DATA = a;
	modo_caracter();
}

void LCD_write_msj(unsigned char * cadena){
	unsigned int i = 0;
	unsigned int l=0;
	l=cadena[i];
	while((l) != 0){
		LCD_character(l);
		i++;
		l=cadena[i];
	}
}

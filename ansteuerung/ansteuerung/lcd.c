/*
 * lcd.h
 *
 * Created: 05.09.2018 15:43:01
 * Author : Armin
 *
 *
 *Dieses Programm dient zur Áusgabe der Geschwindigkeit und der Drehzahl mittel LC-Display
 *
 *	
 *
 *	
 *
 *
 */ 


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include "lcd.h"
#include <util/delay.h>





void delay_ms (unsigned int ms)   //Hilfsfunktion: Zeitvernichtung 
{  
	for (unsigned int i=0; i<ms; i++)
	{
		_delay_ms(1);  
	}

}

void Enable(void)  //Hilfsfunktion: H=>L Flanke der Enable Leitung (E) 
{  
	PORTF = PORTF | (1<<E); //E = 1     
	PORTF = PORTF &~(1<<E); //E = 0  
}

//////////////////////////////////////////////////////////////////////////// // 
// LCD_init(..) Initialisierung: Port F, 4-Bit Mode, 2 Zeilen, 5x8 Dots  
// ////////////////////////////////////////////////////////////////////////////

void LCD_init(void)
{  
	//DDRF = DDRF | (1<<E);										//E als Ausgang
	//DDRB = DDRB | (1<<RS);										//RS als Ausgang
	//DDRF = DDRF | (1<<DB7) | (1<<DB6) | (1<<DB5) | (1<<DB4);	//DB7..DB4 als Ausgang
	
	delay_ms(50);									//lt. Datenblatt min. 15ms nach Power ON warten  
	PORTF = PORTF &~ (1<<E);			//E=0 (RW=0 per HW)
	PORTB = PORTB &~ (1<<RS);			//RS=0
	
	
	// Function Set  
		//DB7..DB4 = 0011  
		PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6));	//Interface auf 8 Bit  
		PORTF = PORTF | (1<<DB5) | (1<<DB4);    
		Enable();
		_delay_ms(10);
	
		//DB7..DB4 = 0011  #
		PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6));	//Interface auf 8 Bit  
		PORTF = PORTF | (1<<DB5) | (1<<DB4);    
		Enable();
		_delay_ms(10);
	
		//DB7..DB4 = 0011  
		PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6));	//Interface auf 8 Bit  
		PORTF = PORTF | (1<<DB5) | (1<<DB4);    
		Enable();
		_delay_ms(10);
	
		//DB7..DB4 = 0010  
		PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) &~(1<<DB4));  
		PORTF = PORTF | (1<<DB5);					//Interface auf 4 Bit  
		Enable();
		_delay_ms(10);
		
	// 2-zeilig, 5x8 Matrix //  
	
	//DB7..DB4 = 0010  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) &~(1<<DB4));  
	PORTF = PORTF | (1<<DB5);   //Upper Nibble  
	Enable();
	_delay_ms(10);
	
	//DB7..DB4 = 1000  
	PORTF = PORTF | (1<<DB7);   //Lower Nibble  
	PORTF = PORTF & (~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4));  
	Enable();
	_delay_ms(10);
	
	//Display Off //  
	//DB7..DB4 = 0000  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4)); //Upper Nibble  
	Enable();
	_delay_ms(10);
	
	//DB7..DB4 = 1000  
	PORTF = PORTF | (1<<DB7);   //Lower Nibble  
	PORTF = PORTF & (~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4));  
	Enable();
	_delay_ms(10);
	
	//Clear Display //  
	//DB7..DB4 = 0000  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4)); //Upper Nibble  
	Enable();
	_delay_ms(10);
	
	//DB7..DB4 = 0001  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) & ~(1<<DB5)); //Lower Nibble  
	PORTF = PORTF | (1<<DB4);  
	Enable();
	_delay_ms(10);
	
	//No Display Shift //  
	//DB7..DB4 = 0000  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4)); //Upper Nibble  
	Enable();
	_delay_ms(10);
	
	//DB7..DB4 = 0011  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6)); //Lower Nibble  
	PORTF = PORTF | (1<<DB5) | (1<<DB4);  
	Enable();
	_delay_ms(10);
	
	// Display ON , Cursor ON, Blinken ON //  
	//DB7..DB4 = 0000  
	PORTF = PORTF & (~(1<<DB7) & ~(1<<DB6) & ~(1<<DB5) & ~(1<<DB4)); //Upper Nibble  
	Enable();
	_delay_ms(10);
	
	//DB7..DB4 = 1111  
	PORTF = PORTF | (1<<DB7) | (1<<DB6) | (1<<DB5) | (1<<DB4); //Lower Nibble  
	Enable(); 
	_delay_ms(10);
	
}

//////////////////////////////////////////////////////////////////////////// 
// 
// LCD_send(..) sendet 1 Byte im 4-Bit Mode 
// 
////////////////////////////////////////////////////////////////////////////

void LCD_send(char data) 
{  
	char temp = data;
	
	PORTB = PORTB | (1<<RS); //SFR vom LCD mit RS auf Daten umschalten      
	
	//Upper Nibble senden   
	if (temp & 0b10000000) { PORTF = PORTF | (1<<DB7);}   
	else { PORTF = PORTF & ~(1<<DB7); }
	
	if (temp & 0b01000000) { PORTF = PORTF | (1<<DB6); }   
	else { PORTF = PORTF & ~(1<<DB6); }
	
	if (temp & 0b00100000) { PORTF = PORTF | (1<<DB5); }   
	else { PORTF = PORTF & ~(1<<DB5); }
	
	if (temp & 0b00010000) { PORTF = PORTF | (1<<DB4); }   
	else { PORTF = PORTF & ~(1<<DB4); }
	
	Enable();   
	delay_ms(1);       
	
	//Lower Nibble senden   
	if (temp & 0b00001000) { PORTF = PORTF | (1<<DB7); }
	else { PORTF = PORTF & ~(1<<DB7); }
	
	if (temp & 0b00000100) { PORTF = PORTF | (1<<DB6); }
	else { PORTF = PORTF & ~(1<<DB6); }
	
	if (temp & 0b00000010) { PORTF = PORTF | (1<<DB5); }
	else { PORTF = PORTF & ~(1<<DB5); }
	
	if (temp & 0b00000001) { PORTF = PORTF | (1<<DB4); }   
	else { PORTF = PORTF & ~(1<<DB4); }
	
	Enable();   
	delay_ms(1);
	
}

//////////////////////////////////////////////////////////////////////////// 
// 
// LCD_cmd(..) Befehl senden im 4-Bit Mode 
// 
////////////////////////////////////////////////////////////////////////////

void LCD_cmd(char data) 
{  
	char temp = data;
	
	PORTB = PORTB &~ (1<<RS); //SFR vom LCD mit RS auf Befehle umschalten
	      
	//Upper Nibble senden   
	if (temp & 0b10000000) { PORTF = PORTF | (1<<DB7); }   
	else { PORTF = PORTF & ~(1<<DB7); }
	
	if (temp & 0b01000000) { PORTF = PORTF | (1<<DB6); }
	else { PORTF = PORTF & ~(1<<DB6); }
	
	if (temp & 0b00100000) { PORTF = PORTF | (1<<DB5); }
	else { PORTF = PORTF & ~(1<<DB5); }
	
	if (temp & 0b00010000) { PORTF = PORTF | (1<<DB4); }
	else { PORTF = PORTF & ~(1<<DB4); }
	
	Enable();   
	delay_ms(1);       
	
	//Lower Nibble senden   
	if (temp & 0b00001000) { PORTF = PORTF | (1<<DB7); }
	else { PORTF = PORTF & ~(1<<DB7); }
	
	if (temp & 0b00000100) { PORTF = PORTF | (1<<DB6); }
	else { PORTF = PORTF & ~(1<<DB6); }
	
	if (temp & 0b00000010) { PORTF = PORTF | (1<<DB5); }
	else { PORTF = PORTF & ~(1<<DB5); }
	
	if (temp & 0b00000001) { PORTF = PORTF | (1<<DB4); }   
	else { PORTF = PORTF & ~(1<<DB4); }
	
	Enable();   
	delay_ms(1);
	
}

//////////////////////////////////////////////////////////////////////////// 
// 
// LCD_string(..) sendet ganzen String im 4-Bit Mode 
// 
//////////////////////////////////////////////////////////////////////////// 

void LCD_string(char *data) 
{      
	while (*data != '\0') //bis zum letzten Zeichen            
	{
		LCD_send(*data++);
	} 
} 

void LCD_Display(void)
{
	LCD_cmd(0x80);   //gehe zu 1. Zeile, 1. Position
	LCD_string("Akku:");
	
	LCD_cmd(0xC3);   //gehe zu 2. Zeile, 1. Position
	LCD_string("%");
	
	/*
	LCD_cmd(0x80);   //gehe zu 1. Zeile, 1. Position
	LCD_string("Drehzahl: ");
	*/
	
	LCD_cmd(0x8f);
	LCD_string("U/m");
	
	/*
	LCD_cmd(0xC0);   //gehe zu 2. Zeile, 1. Position
	LCD_string("Speed:");
	*/
	
	LCD_cmd(0xcf);
	LCD_string("km/h");
}
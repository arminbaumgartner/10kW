/*
 * motoransteuerung.h
 *
 * Created: 05.09.2018 15:43:01
 
 * Author : Armin
 *
 *
 *Dieses Programm dient zur initalisierung der Funktionen
 *
 *
 *	6-fach PWM realisiert durch den Timer 4 + Death time zwischen dem Schalten
 *
 *	Auslesen der Hallsensoren realisiert durch den Pinchange interrupt PCINTT0 (PB1-PB3)
 *
 *	Auslesen des Gaspedals realisiert durch den internen ADC
 *
 *
 */ 




#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include "motoransteuerung.h"
#include "berechnung.h"
#include "datenverarbeitung.h"
#include "lcd.h"

char stufe;
char richtung = 1;
char vor = 1;
char adc_low;
char adc_high;

char current_adc_wert=0;

char adc_counter=0;

char hilfe;

volatile uint8_t adc_0_flag = 0;

void Init_PWM (void){
	
	TCCR4B = TCCR4B &~ (1<<CS40);		//CLKT4 Teiler auf 8 gesetzt -> 2MHz
	TCCR4B = TCCR4B &~ (1<<CS41);
	TCCR4B = TCCR4B | (1<<CS42);
	TCCR4B = TCCR4B &~ (1<<CS43);
	
	TCCR4A = TCCR4A | (1<<PWM4A);
	TCCR4D = TCCR4D &~ (1<<WGM40);		//PWM6 mode Single slope
	TCCR4D = TCCR4D | (1<<WGM41);
	
	TCCR4A = TCCR4A | (1<<COM4A0);		//OC4A pins belegung wenn PWM6 mode ausgewählt ist
	TCCR4A = TCCR4A &~ (1<<COM4A1);
	
	TCCR4A = TCCR4A | (1<<COM4B0);		//Alle 6 Pins freischalten
	TCCR4A = TCCR4A &~ (1<<COM4B1);
	TCCR4C = TCCR4C | (1<<COM4D0);
	TCCR4C = TCCR4C &~ (1<<COM4D1);
	
	TCCR4B = TCCR4B &~ (1<<DTPS40);		//Death Time presacler auf 1
	TCCR4B = TCCR4B &~ (1<<DTPS41);
	
	//TCCR4B = TCCR4B | (1<<PWM4X);		//Inversion mode -> kann die ausgänge invertieren bei 1
	
	//TIMSK4 = TIMSK4 | (OCIE4A);
	
	OCR4C = 255;						//200*500ns = 100µs = 10kHz  //umgeändert auf 255 test zwecke

	TCCR4E = 0x00;						//Start
	
	DT4 = 0xff;		//500ns = 0x88;					//Death time
	
}
 void Init_Pinchange( void )
 {
	PCICR =  PCICR | (1<<PCIE0);		//Enable pin change interrupt0 wenn 1 interrupt von den interrupts auslöst (PORTB)
	 
	PCMSK0 = PCMSK0 | (1<<PCINT1);		//Enable pin change interrupt on PB1
	PCMSK0 = PCMSK0 | (1<<PCINT2);		//Enable pin change interrupt on PB2
	PCMSK0 = PCMSK0 | (1<<PCINT3);		//Enable pin change interrupt on PB3
	PCMSK0 = PCMSK0 | (1<<PCINT4);		//Enable pin change interrupt on PB4 für Schalter

	
	//Externer Interrupt für Umschalter
	EICRA = EICRA | (1<<ISC00);		//Interrupt bei low pegel
	EICRA = EICRA &~ (1<<ISC01);
	
	EIMSK = EIMSK | (1<<INT0);		//Externer Interrupt 0 freischalten
	
 }
 void Init_ADC(void)
 {
	 ADMUX = ADMUX | (1<<REFS0);  //Vref=AVCC
	 ADMUX = ADMUX &~(1<<REFS1);
	 
	 ADMUX  = ADMUX | (1<<ADLAR);  //linksbündig
	 
	 ADMUX = ADMUX &~ (1<<MUX0);	//single ended measurement
	 ADMUX = ADMUX &~ (1<<MUX1);	//auf ADC0 (PF0)
	 ADMUX = ADMUX &~ (1<<MUX2);
	 ADMUX = ADMUX &~ (1<<MUX3);
	 ADMUX = ADMUX &~ (1<<MUX4);
	 ADCSRB = ADCSRB &~ (1<<MUX5);
	 
	 ADCSRA = ADCSRA | (1<<ADEN);		//ADC einschalten
	 ADCSRA = ADCSRA | (1<<ADIE);	//ADC Interrupt freischalten
	 
	 ADCSRA = ADCSRA &~ (1<<ADPS0);	//Prescaler für ADC-Clock
	 ADCSRA = ADCSRA | (1<<ADPS1);	//64 Teiler
	 ADCSRA = ADCSRA | (1<<ADPS2);
	 
	 ADCSRA = ADCSRA | (1<<ADSC);	//Wandlung starten
	 
 }
void Hallsensoren_abfragen(void)
{
	stufe = PINB & 0x0e;
	stufe = stufe/2;		//herunterbrechen von XXX0 -> 0XXXX			z.b. 1110 -> 0111
	
	
	
	if (umschalt_null())		//Drehzahl abfrage
	{
		//Abrage mit Drehzahl noch nötig
		if((PINB & (1<<PINB4)) == 0x00)
		{
			vor = 1;
		}
		else
		{
			vor = 0;
		}
	}
	
	
	if(vor)		//Schalter AUS(vorwärts)	ACHTUNG: es wird PINB abgefragt nicht sufe (0x10)
	{
		
		switch(stufe)
		{
			case 0x05:				//HALL_A + HALL_C
			{
				TCCR4E = 0x00;
				PORTB = PHASE_B_OFF;
				PORTD = PHASE_C_GND;
				TCCR4E = PHASE_A_PWM;
				break;
			}
			case 0x01:				//HALL_A
			{
				TCCR4E = 0x00;
				PORTC = PHASE_A_OFF;
				PORTD = PHASE_C_GND;
				TCCR4E = PHASE_B_PWM;
				break;
			}
			case 0x03:				//HALL_A + HALL_B
			{
				TCCR4E = 0x00;
				PORTD = PHASE_C_OFF;
				PORTC = PHASE_A_GND;
				TCCR4E = PHASE_B_PWM;
				break;
			}
			case 0x02:				//HALL_B
			{
				TCCR4E = 0x00;
				PORTB = PHASE_B_OFF;
				PORTC = PHASE_A_GND;
				TCCR4E = PHASE_C_PWM;
				break;
			}
			case 0x06:			//HALL_B + HALL_C
			{
				TCCR4E = 0x00;
				PORTC = PHASE_A_OFF;
				PORTB = PHASE_B_GND;
				TCCR4E = PHASE_C_PWM;
				break;
			}
			case 0x04:			//HALL_C
			{
				TCCR4E = 0x00;
				PORTD = PHASE_C_OFF;
				PORTB = PHASE_B_GND;
				TCCR4E = PHASE_A_PWM;
				break;
			}
			default:
			{
				//TCCR4E = 0x00;
			}
		}	//Klammen Switch
		
	}	//Klemmen if
	else			//Schalter EIN(rückwärts) LOW-AKTIV		ACHTUNG: es wird PINB abgefragt nicht stufe (0x10)
	{
		switch(stufe)
		{
			case 0x05:			//HALL_A + HALL_C
			{
				TCCR4E = 0x00;
				PORTB = PHASE_B_OFF;
				PORTC = PHASE_A_GND;
				TCCR4E = PHASE_C_PWM;
				break;
			}
			case 0x01:			//HALL_A
			{
				TCCR4E = 0x00;
				PORTC = PHASE_A_OFF;
				PORTB = PHASE_B_GND;
				TCCR4E = PHASE_C_PWM;
				break;
			}
			case 0x03:			//HALL_A + HALL_B
			{
				TCCR4E = 0x00;
				PORTD = PHASE_C_OFF;
				PORTB = PHASE_B_GND;
				TCCR4E = PHASE_A_PWM;
				break;
			}
			case 0x02:			//HALL_B
			{
				TCCR4E = 0x00;
				PORTB = PHASE_B_OFF;
				PORTD = PHASE_C_GND;
				TCCR4E = PHASE_A_PWM;
				break;
			}
			case 0x06:			//HALL_B + HALL_C
			{
				TCCR4E = 0x00;
				PORTC = PHASE_A_OFF;
				PORTD = PHASE_C_GND;
				TCCR4E = PHASE_B_PWM;
				break;
			}
			case 0x04:			//HALL_C
			{
				TCCR4E = 0x00;
				PORTD = PHASE_C_OFF;
				PORTC = PHASE_A_GND;
				TCCR4E = PHASE_B_PWM;
				break;
			}
			default:
			{
				//TCCR4E = 0x00;
			}
		}	//Klammer Switch
	}
}
char adc_abfrage(void)
{
	return adc_high;
}

ISR(PCINT0_vect)
{
	geschwindigkeit_auslesen();		//TCNT1 auslesen
	
	Hallsensoren_abfragen();		//Abfrage + Umschalten der Phase
	
	drehzahl_berechnung();
	
	if (drehzahl_holen() >= 2001)
	{
		OCR4A = geschwindigkeits_regulierung(adc_high);
	}
	

	
}	//Klammer Pin change
/*
ISR(INT0_vect)
{
	///		Vorwärts - Rückwärts	 ///
	if((PIND & (1<<PIND0)) == 0x01)		//Schalter AUS(vorwärts)	ACHTUNG: es wird PINB abgefragt nicht sufe (0x10)
	{
			richtung = 1;
	}
	else
	{
			richtung = 0;
	}

}
*/
ISR(ADC_vect)						//Löst aus, wenn die Konversation beendet ist
{

	
	adc_low = ADCL;					//zuerst immer Low Bits holen
	adc_high = ADCH;				//dann High Bits holen
	
	/*
	
	if (adc_high == 0)
	{
		adc_0_flag = 1;
	}
	
	*/
	
	if (1)
	{
		if ((drehzahl_holen() <= 2000))
		{
			PORTD = PORTD | (1<<PORTD4);
			
			OCR4A = geschwindigkeits_regulierung(adc_high);
			
			PORTD = PORTD &~ (1<<PORTD4);
			
		}		
	}
	else
	{
		OCR4A = 0;
	}
		
		
	
	/*
	if(adc_high >= 250)
	{
		adc_high = 250;
	}
	*/
	
	///OCR4A = adc_high;
	
	
	/*
	if (adc_counter >= 20)
	{
		adc_counter = 0;
		
		current_adc_wert = OCR4A;
		
		OCR4A = geschwindigkeits_regulierung(adc_high);
				
	}
	else
	{
		adc_counter++;
	}
	*/
	

	ADCSRA = ADCSRA | (1<<ADSC);	//Wandlung starten
}

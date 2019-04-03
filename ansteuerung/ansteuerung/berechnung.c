/*
 * berechnung.h
 *
 * Created: 05.09.2018 15:43:01
 * Author : Armin
 *
 *
 *Dieses Programm dient zur Berechnung der Fahrdaten
 *
 *	Geschwindgkeits / Umdrehungen pro min berrechnung durch Timer 1
 *	Erkennung des Stilstandes durch Timer 1
 *
 *	Berechnungsfunktionen die für das Hauptprogramm nötig sind
 *
 *
 */ 


#include <avr/io.h>
#include <avr/interrupt.h>
#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "berechnung.h"
#include "lcd.h"


volatile uint16_t steps;	//Timer 1 Schrittweite (3km/h - 100km/h)

int timer1_teiler_mult = 4;		//Timer 1 Teilerzeit
int motor_teiler = 3;			//Elektrische Teilung vom Motor
float uebersetzung = 1;			//Übersetzung
float raddurchmesser = 0.2;		//In Meter

char overflow;

volatile float step_dauer;
volatile float step_dauer_help;
volatile float drehzahl_pro_sekunde;
volatile float geschwindigkeit_help;
volatile float geschwindigkeit;
volatile float drehzahl;
volatile float drehzahl_alt_ermittelt=0;

uint8_t drehzahl_mittelung_hilfe = 0;
volatile float drehzahl_mittelung[3];


volatile uint16_t geschwindigkeit_ausgabe;
volatile uint16_t drehzahl_ausgabe_01;

char ausgabe[10];


void Init_Timer1 (void)
{
	TCCR1B = TCCR1B | (1<<CS10);		// Teiler 256 (16MHz / 256 = 16µs)
	TCCR1B = TCCR1B | (1<<CS11);		//Kleiner Schritt 16µs		(1*16µs)
	TCCR1B = TCCR1B &~ (1<<CS12);		//Größter Schritt 1,048s	(65535*16µs)
	
	TIMSK1 = TIMSK1 | (1<<TOIE1);		//OVERFLOW-Interrupt aktivieren
}
void geschwindigkeit_auslesen(void)
{
	
	overflow = 0;
	steps = TCNT1;
	TCNT1 = 0;
	

}
void drehzahl_berechnung (void)
{
	if(overflow)
	{
		steps = 15000;
		drehzahl = 0;
		drehzahl_pro_sekunde = 0;
		step_dauer = 0;
	}
	else
	{
		
		if (steps >= 40)		//Fehlerhafter hallsensor	 5000U/s
		{
				
			if(steps >= 15500)		//Geschwindigkeits unterschreitung -> 13.750 nötig um 1 U/s zu generieren
			{
				steps=15500;
			}
		
		
			
			step_dauer = steps*timer1_teiler_mult;		//Werte von max 55.000µs um auf 1U/s zu kommen
			step_dauer = step_dauer/100;				//Werte von 1 bis 550				///////ab hier korriegieren /// Teiler vieleicht auf 64 statt 256
		
		
			step_dauer_help = (step_dauer*6*motor_teiler);	//Werte von 18 bis 9900
			step_dauer_help = step_dauer_help/10;			//Werte von 1 bis 990
		
			drehzahl_pro_sekunde = 1000/step_dauer_help;	//Werte von 1 bis 1000
		
			drehzahl = drehzahl_pro_sekunde*60;
					
			
			
			//drehzahl = 625000/(steps*3);
			
		
			drehzahl_mittelung[drehzahl_mittelung_hilfe] = drehzahl;
			drehzahl_mittelung_hilfe++;
		
			if (drehzahl_mittelung_hilfe >= 3)
			{
				drehzahl_mittelung_hilfe=0;
			}
		
		}
	
	}
}
void geschwindigkeit_berechnung(void)
{
	
	if(overflow)
	{
		steps = 0;
		geschwindigkeit = 0;
		drehzahl = 0;
		drehzahl_pro_sekunde = 0;
		step_dauer = 0;
	}
	else
	{
				
		drehzahl_ausgabe_01 = (uint16_t)drehzahl;
	
		geschwindigkeit_help = ((drehzahl_pro_sekunde*raddurchmesser*3.14)/uebersetzung) * 3.6;
	
	
		//drehzahl = ceil(drehzahl);
	
		geschwindigkeit_help = ((drehzahl_pro_sekunde * raddurchmesser * 3.14) / uebersetzung) * 3.6;
		geschwindigkeit = ceil (geschwindigkeit_help);
		
		geschwindigkeit_ausgabe = (uint16_t)geschwindigkeit;
	
		}
	
	
}

void drehzahl_ausgabe (void)
{
	sprintf(ausgabe,"    ");
	LCD_cmd(0x8b);   //gehe zu 1. Zeile, 25. Position
	LCD_string(ausgabe);
	
	sprintf(ausgabe,"%d",drehzahl_ausgabe_01);
	LCD_cmd(0x8a);   //gehe zu 1. Zeile, 25. Position
	LCD_string(ausgabe);
}

void geschwindigkeits_ausgabe (void)
{
	sprintf(ausgabe,"    ");
	LCD_cmd(0xcb);   //gehe zu 2. Zeile, 25. Position
	LCD_string(ausgabe);
	
	sprintf(ausgabe,"%d",geschwindigkeit_ausgabe);
	LCD_cmd(0xca);   //gehe zu 2. Zeile, 25. Position
	LCD_string(ausgabe);
}
void preset_drehzahl_gesch (void)
{
	drehzahl = 0;
	geschwindigkeit = 0;
}
char umschalt_null (void)
{
	if (drehzahl == 0)
	{
		return 1;
	}
	else
	{
		return 0;		//Geschwindigkeit zu hoch
	}
	
}
void drehzahl_save(float drehzahl_alt)
{
	drehzahl_alt_ermittelt = drehzahl_alt;		
}
float drehzahl_holen(void)
{
	return drehzahl;
}
float gemittelte_drehzahl_holen(void)
{
	float hilfsvariable=0;
	
	for(int i=0; i<3; i++)
	{
		hilfsvariable = (hilfsvariable+(drehzahl_mittelung[i]/3));		
	}
	
	return hilfsvariable;
	
}
float drehzahl_alt_holen(void)
{
	return drehzahl_alt_ermittelt;
}

ISR(TIMER1_OVF_vect)			//Motor steht
{
	
	overflow = 1;
	
	steps = 15500;
	geschwindigkeit = 0;
	geschwindigkeit_ausgabe = 0;
	drehzahl = 0;
	drehzahl_ausgabe_01 = 0;
	drehzahl_pro_sekunde = 0;
	step_dauer = 0;
	
}
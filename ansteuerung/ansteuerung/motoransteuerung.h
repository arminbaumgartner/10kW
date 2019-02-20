

#define PHASE_A_PWM (TCCR4E | (1<<OC4OE0)|(1<<OC4OE1))					//PHASE_A PWM	PWM signal an Phase A
#define PHASE_A_GND1 (PORTC &~ (1<<PORTC7))								//PHASE_A GND1	Stufe_1		HS deaktiviert
#define PHASE_A_GND2 (PORTC | (1<<PORTC6))								//PHASE_A GND2	Stufe_2		LS aktiviert
#define PHASE_A_GND ((PORTC &~ (1<<PORTC7)) | (1<<PORTC6))				//PHASE_A GND	HS deaktiviert	LS aktiviert
#define PHASE_A_OFF (PORTC &~ (1<<PORTC7) &~ (1<<PORTC6))				//PHASE_A OFF	Hochohmig

#define PHASE_B_PWM (TCCR4E | (1<<OC4OE2) | (1<<OC4OE3))				//PHASE_B PWM	PWM signal an Phase A
#define PHASE_B_GND1 (PORTB &~ (1<<PORTB6))								//PHASE_B GND1	Stufe_1		HS deatkiviert
#define PHASE_B_GND2 (PORTB | (1<<PORTB5))								//PHASE_B GND2	Stufe_2		LS aktiviert
#define PHASE_B_GND ((PORTB &~ (1<<PORTB6)) | (1<<PORTB5))				//PHASE_A GND	HS deaktiviert	LS aktiviert
#define PHASE_B_OFF (PORTB &~ (1<<PORTB6) &~ (1<<PORTB5))				//PHASE_B OFF	Hochohmig

#define PHASE_C_PWM (TCCR4E | (1<<OC4OE5)|(1<<OC4OE4))					//PHASE_C PWM	PWM signal an Phase A
#define PHASE_C_GND1 (PORTD &~ (1<<PORTD7))								//PHASE_C_GND1	Stufe_1		HS deaktiviert
#define PHASE_C_GND2 (PORTD | (1<<PORTD6))								//PHASE_C GND2	Stufe_2		LS aktiviert
#define PHASE_C_GND ((PORTD &~ (1<<PORTD7)) | (1<<PORTD6))				//PHASE_A GND	HS deaktiviert	LS aktiviert
#define PHASE_C_OFF (PORTD &~ (1<<PORTD7) &~ (1<<PORTD6))				//PHASE_C OFF	Hochohmig


void Init_PWM (void);
void Init_Pinchange(void);
void Init_ADC(void);
void Hallsensoren_abfragen(void);

char adc_abfrage(void);

void test_OCR4A_ausgabe (void);



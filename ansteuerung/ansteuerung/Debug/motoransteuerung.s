	.file	"motoransteuerung.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Init_PWM,"ax",@progbits
.global	Init_PWM
	.type	Init_PWM, @function
Init_PWM:
.LFB11:
	.file 1 ".././motoransteuerung.c"
	.loc 1 47 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 49 0
	ldi r30,lo8(-63)
	ldi r31,0
	ld r24,Z
	.loc 1 49 0
	andi r24,lo8(-2)
	st Z,r24
	.loc 1 50 0
	ld r24,Z
	.loc 1 50 0
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 51 0
	ld r24,Z
	.loc 1 51 0
	ori r24,lo8(4)
	st Z,r24
	.loc 1 52 0
	ld r24,Z
	.loc 1 52 0
	andi r24,lo8(-9)
	st Z,r24
	.loc 1 54 0
	ldi r26,lo8(-64)
	ldi r27,0
	ld r24,X
	.loc 1 54 0
	ori r24,lo8(2)
	st X,r24
	.loc 1 55 0
	ldi r28,lo8(-61)
	ldi r29,0
	ld r24,Y
	.loc 1 55 0
	andi r24,lo8(-2)
	st Y,r24
	.loc 1 56 0
	ld r24,Y
	.loc 1 56 0
	ori r24,lo8(2)
	st Y,r24
	.loc 1 58 0
	ld r24,X
	.loc 1 58 0
	ori r24,lo8(64)
	st X,r24
	.loc 1 59 0
	ld r24,X
	.loc 1 59 0
	andi r24,lo8(127)
	st X,r24
	.loc 1 61 0
	ld r24,X
	.loc 1 61 0
	ori r24,lo8(16)
	st X,r24
	.loc 1 62 0
	ld r24,X
	.loc 1 62 0
	andi r24,lo8(-33)
	st X,r24
	.loc 1 63 0
	ldi r26,lo8(-62)
	ldi r27,0
	ld r24,X
	.loc 1 63 0
	ori r24,lo8(4)
	st X,r24
	.loc 1 64 0
	ld r24,X
	.loc 1 64 0
	andi r24,lo8(-9)
	st X,r24
	.loc 1 66 0
	ld r24,Z
	.loc 1 66 0
	andi r24,lo8(-17)
	st Z,r24
	.loc 1 67 0
	ld r24,Z
	.loc 1 67 0
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 73 0
	ldi r24,lo8(-1)
	sts 209,r24
	.loc 1 75 0
	sts 196,__zero_reg__
	.loc 1 77 0
	sts 212,r24
/* epilogue start */
	.loc 1 79 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE11:
	.size	Init_PWM, .-Init_PWM
	.section	.text.Init_Pinchange,"ax",@progbits
.global	Init_Pinchange
	.type	Init_Pinchange, @function
Init_Pinchange:
.LFB12:
	.loc 1 81 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 82 0
	ldi r30,lo8(104)
	ldi r31,0
	ld r24,Z
	.loc 1 82 0
	ori r24,lo8(1)
	st Z,r24
	.loc 1 84 0
	ldi r30,lo8(107)
	ldi r31,0
	ld r24,Z
	.loc 1 84 0
	ori r24,lo8(2)
	st Z,r24
	.loc 1 85 0
	ld r24,Z
	.loc 1 85 0
	ori r24,lo8(4)
	st Z,r24
	.loc 1 86 0
	ld r24,Z
	.loc 1 86 0
	ori r24,lo8(8)
	st Z,r24
	.loc 1 87 0
	ld r24,Z
	.loc 1 87 0
	ori r24,lo8(16)
	st Z,r24
	.loc 1 91 0
	ldi r30,lo8(105)
	ldi r31,0
	ld r24,Z
	.loc 1 91 0
	ori r24,lo8(1)
	st Z,r24
	.loc 1 92 0
	ld r24,Z
	.loc 1 92 0
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 94 0
	sbi 0x1d,0
	ret
	.cfi_endproc
.LFE12:
	.size	Init_Pinchange, .-Init_Pinchange
	.section	.text.Init_ADC,"ax",@progbits
.global	Init_ADC
	.type	Init_ADC, @function
Init_ADC:
.LFB13:
	.loc 1 98 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 99 0
	ldi r30,lo8(124)
	ldi r31,0
	ld r24,Z
	.loc 1 99 0
	ori r24,lo8(64)
	st Z,r24
	.loc 1 100 0
	ld r24,Z
	.loc 1 100 0
	andi r24,lo8(127)
	st Z,r24
	.loc 1 102 0
	ld r24,Z
	.loc 1 102 0
	ori r24,lo8(32)
	st Z,r24
	.loc 1 104 0
	ld r24,Z
	.loc 1 104 0
	andi r24,lo8(-2)
	st Z,r24
	.loc 1 105 0
	ld r24,Z
	.loc 1 105 0
	andi r24,lo8(-3)
	st Z,r24
	.loc 1 106 0
	ld r24,Z
	.loc 1 106 0
	andi r24,lo8(-5)
	st Z,r24
	.loc 1 107 0
	ld r24,Z
	.loc 1 107 0
	andi r24,lo8(-9)
	st Z,r24
	.loc 1 108 0
	ld r24,Z
	.loc 1 108 0
	andi r24,lo8(-17)
	st Z,r24
	.loc 1 109 0
	ldi r30,lo8(123)
	ldi r31,0
	ld r24,Z
	.loc 1 109 0
	andi r24,lo8(-33)
	st Z,r24
	.loc 1 111 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	.loc 1 111 0
	ori r24,lo8(-128)
	st Z,r24
	.loc 1 112 0
	ld r24,Z
	.loc 1 112 0
	ori r24,lo8(8)
	st Z,r24
	.loc 1 114 0
	ld r24,Z
	.loc 1 114 0
	andi r24,lo8(-2)
	st Z,r24
	.loc 1 115 0
	ld r24,Z
	.loc 1 115 0
	ori r24,lo8(2)
	st Z,r24
	.loc 1 116 0
	ld r24,Z
	.loc 1 116 0
	ori r24,lo8(4)
	st Z,r24
	.loc 1 118 0
	ld r24,Z
	.loc 1 118 0
	ori r24,lo8(64)
	st Z,r24
	ret
	.cfi_endproc
.LFE13:
	.size	Init_ADC, .-Init_ADC
	.section	.text.Hallsensoren_abfragen,"ax",@progbits
.global	Hallsensoren_abfragen
	.type	Hallsensoren_abfragen, @function
Hallsensoren_abfragen:
.LFB14:
	.loc 1 122 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 123 0
	in r24,0x3
	.loc 1 124 0
	andi r24,lo8(14)
	lsr r24
	sts stufe,r24
	.loc 1 128 0
	call umschalt_null
.LVL0:
	tst r24
	breq .L5
	.loc 1 131 0
	sbic 0x3,4
	rjmp .L6
	.loc 1 133 0
	ldi r24,lo8(1)
	sts vor,r24
	rjmp .L7
.L6:
	.loc 1 137 0
	sts vor,__zero_reg__
	rjmp .L8
.L5:
	.loc 1 142 0
	lds r24,vor
	tst r24
	brne .+2
	rjmp .L8
.L7:
	.loc 1 145 0
	lds r24,stufe
	cpi r24,lo8(3)
	breq .L10
	brsh .L11
	cpi r24,lo8(1)
	breq .L12
	cpi r24,lo8(2)
	breq .L13
	ret
.L11:
	cpi r24,lo8(5)
	breq .L14
	brsh .+2
	rjmp .L15
	cpi r24,lo8(6)
	breq .L16
	ret
.L14:
	.loc 1 149 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 150 0
	in r24,0x5
	.loc 1 150 0
	andi r24,lo8(-97)
	out 0x5,r24
	.loc 1 151 0
	in r24,0xb
	.loc 1 151 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0xb,r24
	.loc 1 152 0
	ld r24,Z
	.loc 1 152 0
	ori r24,lo8(3)
	st Z,r24
	.loc 1 153 0
	ret
.L12:
	.loc 1 157 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 158 0
	in r24,0x8
	.loc 1 158 0
	andi r24,lo8(63)
	out 0x8,r24
	.loc 1 159 0
	in r24,0xb
	.loc 1 159 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0xb,r24
	.loc 1 160 0
	ld r24,Z
	.loc 1 160 0
	ori r24,lo8(12)
	st Z,r24
	.loc 1 161 0
	ret
.L10:
	.loc 1 165 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 166 0
	in r24,0xb
	.loc 1 166 0
	andi r24,lo8(63)
	out 0xb,r24
	.loc 1 167 0
	in r24,0x8
	.loc 1 167 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0x8,r24
	.loc 1 168 0
	ld r24,Z
	.loc 1 168 0
	ori r24,lo8(12)
	st Z,r24
	.loc 1 169 0
	ret
.L13:
	.loc 1 173 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 174 0
	in r24,0x5
	.loc 1 174 0
	andi r24,lo8(-97)
	out 0x5,r24
	.loc 1 175 0
	in r24,0x8
	.loc 1 175 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0x8,r24
	.loc 1 176 0
	ld r24,Z
	.loc 1 176 0
	ori r24,lo8(48)
	st Z,r24
	.loc 1 177 0
	ret
.L16:
	.loc 1 181 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 182 0
	in r24,0x8
	.loc 1 182 0
	andi r24,lo8(63)
	out 0x8,r24
	.loc 1 183 0
	in r24,0x5
	.loc 1 183 0
	andi r24,lo8(-97)
	ori r24,lo8(32)
	out 0x5,r24
	.loc 1 184 0
	ld r24,Z
	.loc 1 184 0
	ori r24,lo8(48)
	st Z,r24
	.loc 1 185 0
	ret
.L15:
	.loc 1 189 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 190 0
	in r24,0xb
	.loc 1 190 0
	andi r24,lo8(63)
	out 0xb,r24
	.loc 1 191 0
	in r24,0x5
	.loc 1 191 0
	andi r24,lo8(-97)
	ori r24,lo8(32)
	out 0x5,r24
	.loc 1 192 0
	ld r24,Z
	.loc 1 192 0
	ori r24,lo8(3)
	st Z,r24
	.loc 1 193 0
	ret
.L8:
	.loc 1 204 0
	lds r24,stufe
	cpi r24,lo8(3)
	breq .L17
	brsh .L18
	cpi r24,lo8(1)
	breq .L19
	cpi r24,lo8(2)
	breq .L20
	ret
.L18:
	cpi r24,lo8(5)
	breq .L21
	brsh .+2
	rjmp .L22
	cpi r24,lo8(6)
	breq .L23
	ret
.L21:
	.loc 1 208 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 209 0
	in r24,0x5
	.loc 1 209 0
	andi r24,lo8(-97)
	out 0x5,r24
	.loc 1 210 0
	in r24,0x8
	.loc 1 210 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0x8,r24
	.loc 1 211 0
	ld r24,Z
	.loc 1 211 0
	ori r24,lo8(48)
	st Z,r24
	.loc 1 212 0
	ret
.L19:
	.loc 1 216 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 217 0
	in r24,0x8
	.loc 1 217 0
	andi r24,lo8(63)
	out 0x8,r24
	.loc 1 218 0
	in r24,0x5
	.loc 1 218 0
	andi r24,lo8(-97)
	ori r24,lo8(32)
	out 0x5,r24
	.loc 1 219 0
	ld r24,Z
	.loc 1 219 0
	ori r24,lo8(48)
	st Z,r24
	.loc 1 220 0
	ret
.L17:
	.loc 1 224 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 225 0
	in r24,0xb
	.loc 1 225 0
	andi r24,lo8(63)
	out 0xb,r24
	.loc 1 226 0
	in r24,0x5
	.loc 1 226 0
	andi r24,lo8(-97)
	ori r24,lo8(32)
	out 0x5,r24
	.loc 1 227 0
	ld r24,Z
	.loc 1 227 0
	ori r24,lo8(3)
	st Z,r24
	.loc 1 228 0
	ret
.L20:
	.loc 1 232 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 233 0
	in r24,0x5
	.loc 1 233 0
	andi r24,lo8(-97)
	out 0x5,r24
	.loc 1 234 0
	in r24,0xb
	.loc 1 234 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0xb,r24
	.loc 1 235 0
	ld r24,Z
	.loc 1 235 0
	ori r24,lo8(3)
	st Z,r24
	.loc 1 236 0
	ret
.L23:
	.loc 1 240 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 241 0
	in r24,0x8
	.loc 1 241 0
	andi r24,lo8(63)
	out 0x8,r24
	.loc 1 242 0
	in r24,0xb
	.loc 1 242 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0xb,r24
	.loc 1 243 0
	ld r24,Z
	.loc 1 243 0
	ori r24,lo8(12)
	st Z,r24
	.loc 1 244 0
	ret
.L22:
	.loc 1 248 0
	ldi r30,lo8(-60)
	ldi r31,0
	st Z,__zero_reg__
	.loc 1 249 0
	in r24,0xb
	.loc 1 249 0
	andi r24,lo8(63)
	out 0xb,r24
	.loc 1 250 0
	in r24,0x8
	.loc 1 250 0
	andi r24,lo8(63)
	ori r24,lo8(64)
	out 0x8,r24
	.loc 1 251 0
	ld r24,Z
	.loc 1 251 0
	ori r24,lo8(12)
	st Z,r24
	ret
	.cfi_endproc
.LFE14:
	.size	Hallsensoren_abfragen, .-Hallsensoren_abfragen
	.section	.text.adc_abfrage,"ax",@progbits
.global	adc_abfrage
	.type	adc_abfrage, @function
adc_abfrage:
.LFB15:
	.loc 1 262 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 264 0
	lds r24,adc_high
	ret
	.cfi_endproc
.LFE15:
	.size	adc_abfrage, .-adc_abfrage
.global	__gesf2
	.section	.text.__vector_9,"ax",@progbits
.global	__vector_9
	.type	__vector_9, @function
__vector_9:
.LFB16:
	.loc 1 267 0
	.cfi_startproc
	push r1
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI4:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI5:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI6:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI7:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI8:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI9:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI10:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI11:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI12:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI13:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI14:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI15:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 268 0
	call geschwindigkeit_auslesen
.LVL1:
	.loc 1 270 0
	call Hallsensoren_abfragen
.LVL2:
	.loc 1 272 0
	call drehzahl_berechnung
.LVL3:
	.loc 1 274 0
	call drehzahl_holen
.LVL4:
	ldi r18,0
	ldi r19,lo8(32)
	ldi r20,lo8(-6)
	ldi r21,lo8(68)
	call __gesf2
.LVL5:
	tst r24
	brlt .L25
	.loc 1 276 0
	lds r24,adc_high
	call geschwindigkeits_regulierung
.LVL6:
	sts 207,r24
.L25:
/* epilogue start */
	.loc 1 281 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE16:
	.size	__vector_9, .-__vector_9
.global	__lesf2
	.section	.text.__vector_29,"ax",@progbits
.global	__vector_29
	.type	__vector_29, @function
__vector_29:
.LFB17:
	.loc 1 298 0
	.cfi_startproc
	push r1
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI18:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI19:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI20:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI21:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI22:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI23:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI24:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI25:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI26:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI27:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI28:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI29:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 301 0
	lds r24,120
	sts adc_low,r24
	.loc 1 302 0
	lds r24,121
	sts adc_high,r24
	.loc 1 315 0
	call drehzahl_holen
.LVL7:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-6)
	ldi r21,lo8(68)
	call __lesf2
.LVL8:
	cp __zero_reg__,r24
	brlt .L30
	.loc 1 317 0
	sbi 0xb,4
	.loc 1 319 0
	lds r24,adc_high
	call geschwindigkeits_regulierung
.LVL9:
	sts 207,r24
	.loc 1 321 0
	cbi 0xb,4
.L30:
	.loc 1 359 0
	ldi r30,lo8(122)
	ldi r31,0
	ld r24,Z
	.loc 1 359 0
	ori r24,lo8(64)
	st Z,r24
/* epilogue start */
	.loc 1 360 0
	pop r31
	pop r30
	pop r27
	pop r26
	pop r25
	pop r24
	pop r23
	pop r22
	pop r21
	pop r20
	pop r19
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE17:
	.size	__vector_29, .-__vector_29
.global	adc_0_flag
	.section	.bss.adc_0_flag,"aw",@nobits
	.type	adc_0_flag, @object
	.size	adc_0_flag, 1
adc_0_flag:
	.zero	1
	.comm	hilfe,1,1
.global	adc_counter
	.section	.bss.adc_counter,"aw",@nobits
	.type	adc_counter, @object
	.size	adc_counter, 1
adc_counter:
	.zero	1
.global	current_adc_wert
	.section	.bss.current_adc_wert,"aw",@nobits
	.type	current_adc_wert, @object
	.size	current_adc_wert, 1
current_adc_wert:
	.zero	1
	.comm	adc_high,1,1
	.comm	adc_low,1,1
.global	vor
	.section	.data.vor,"aw",@progbits
	.type	vor, @object
	.size	vor, 1
vor:
	.byte	1
.global	richtung
	.section	.data.richtung,"aw",@progbits
	.type	richtung, @object
	.size	richtung, 1
richtung:
	.byte	1
	.comm	stufe,1,1
	.text
.Letext0:
	.file 2 ".././berechnung.h"
	.file 3 ".././datenverarbeitung.h"
	.file 4 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x250
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF27
	.byte	0xc
	.long	.LASF28
	.long	.LASF29
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF30
	.byte	0x4
	.byte	0x7e
	.long	0x3b
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF7
	.uleb128 0x5
	.byte	0x1
	.long	.LASF8
	.byte	0x1
	.byte	0x2f
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.long	.LLST0
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF9
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x61
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xd9
	.uleb128 0x8
	.long	.LVL0
	.long	0x212
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF31
	.byte	0x1
	.word	0x105
	.byte	0x1
	.long	0x6c
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.word	0x10a
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST1
	.byte	0x1
	.long	0x13d
	.uleb128 0x8
	.long	.LVL1
	.long	0x21f
	.uleb128 0x8
	.long	.LVL2
	.long	0xb5
	.uleb128 0x8
	.long	.LVL3
	.long	0x22c
	.uleb128 0x8
	.long	.LVL4
	.long	0x239
	.uleb128 0x8
	.long	.LVL6
	.long	0x246
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.word	0x129
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.long	.LLST2
	.byte	0x1
	.long	0x16b
	.uleb128 0x8
	.long	.LVL7
	.long	0x239
	.uleb128 0x8
	.long	.LVL9
	.long	0x246
	.byte	0
	.uleb128 0xb
	.long	.LASF14
	.byte	0x1
	.byte	0x21
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	stufe
	.uleb128 0xb
	.long	.LASF15
	.byte	0x1
	.byte	0x22
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	richtung
	.uleb128 0xc
	.string	"vor"
	.byte	0x1
	.byte	0x23
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	vor
	.uleb128 0xb
	.long	.LASF16
	.byte	0x1
	.byte	0x24
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adc_low
	.uleb128 0xb
	.long	.LASF17
	.byte	0x1
	.byte	0x25
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adc_high
	.uleb128 0xb
	.long	.LASF18
	.byte	0x1
	.byte	0x27
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	current_adc_wert
	.uleb128 0xb
	.long	.LASF19
	.byte	0x1
	.byte	0x29
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adc_counter
	.uleb128 0xb
	.long	.LASF20
	.byte	0x1
	.byte	0x2b
	.long	0x6c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	hilfe
	.uleb128 0xb
	.long	.LASF21
	.byte	0x1
	.byte	0x2d
	.long	0x20d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	adc_0_flag
	.uleb128 0xd
	.long	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.long	.LASF22
	.long	.LASF22
	.byte	0x2
	.byte	0x15
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.long	.LASF23
	.long	.LASF23
	.byte	0x2
	.byte	0x7
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.long	.LASF24
	.long	.LASF24
	.byte	0x2
	.byte	0x9
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.long	.LASF25
	.long	.LASF25
	.byte	0x2
	.byte	0x11
	.uleb128 0xe
	.byte	0x1
	.byte	0x1
	.long	.LASF26
	.long	.LASF26
	.byte	0x3
	.byte	0x1c
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB11
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LFE11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST1:
	.long	.LFB16
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI15
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST2:
	.long	.LFB17
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI29
	.long	.LFE17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB11
	.long	.LFE11-.LFB11
	.long	.LFB12
	.long	.LFE12-.LFB12
	.long	.LFB13
	.long	.LFE13-.LFB13
	.long	.LFB14
	.long	.LFE14-.LFB14
	.long	.LFB15
	.long	.LFE15-.LFB15
	.long	.LFB16
	.long	.LFE16-.LFB16
	.long	.LFB17
	.long	.LFE17-.LFB17
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LFB11
	.long	.LFE11
	.long	.LFB12
	.long	.LFE12
	.long	.LFB13
	.long	.LFE13
	.long	.LFB14
	.long	.LFE14
	.long	.LFB15
	.long	.LFE15
	.long	.LFB16
	.long	.LFE16
	.long	.LFB17
	.long	.LFE17
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF18:
	.string	"current_adc_wert"
.LASF29:
	.string	"C:\\\\Users\\\\Armin Baumgartner\\\\Desktop\\\\ansteuerung\\\\ansteuerung\\\\Debug"
.LASF22:
	.string	"umschalt_null"
.LASF20:
	.string	"hilfe"
.LASF17:
	.string	"adc_high"
.LASF31:
	.string	"adc_abfrage"
.LASF8:
	.string	"Init_PWM"
.LASF1:
	.string	"unsigned char"
.LASF27:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF4:
	.string	"long unsigned int"
.LASF24:
	.string	"drehzahl_berechnung"
.LASF2:
	.string	"unsigned int"
.LASF6:
	.string	"long long unsigned int"
.LASF30:
	.string	"uint8_t"
.LASF14:
	.string	"stufe"
.LASF28:
	.string	".././motoransteuerung.c"
.LASF16:
	.string	"adc_low"
.LASF9:
	.string	"Init_Pinchange"
.LASF25:
	.string	"drehzahl_holen"
.LASF5:
	.string	"long long int"
.LASF7:
	.string	"char"
.LASF11:
	.string	"Hallsensoren_abfragen"
.LASF13:
	.string	"__vector_29"
.LASF21:
	.string	"adc_0_flag"
.LASF3:
	.string	"long int"
.LASF12:
	.string	"__vector_9"
.LASF15:
	.string	"richtung"
.LASF0:
	.string	"signed char"
.LASF23:
	.string	"geschwindigkeit_auslesen"
.LASF26:
	.string	"geschwindigkeits_regulierung"
.LASF19:
	.string	"adc_counter"
.LASF10:
	.string	"Init_ADC"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data
.global __do_clear_bss

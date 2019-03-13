	.file	"kommunikation.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.init_usart,"ax",@progbits
.global	init_usart
	.type	init_usart, @function
init_usart:
.LFB11:
	.file 1 ".././kommunikation.c"
	.loc 1 47 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 48 0
	sts 205,__zero_reg__
	.loc 1 49 0
	ldi r24,lo8(103)
	sts 204,r24
	.loc 1 50 0
	ldi r26,lo8(-55)
	ldi r27,0
	ld r24,X
	.loc 1 50 0
	ori r24,lo8(16)
	st X,r24
	.loc 1 51 0
	ld r24,X
	.loc 1 51 0
	ori r24,lo8(-128)
	st X,r24
	.loc 1 52 0
	ld r24,X
	.loc 1 52 0
	ori r24,lo8(8)
	st X,r24
	.loc 1 54 0
	ldi r30,lo8(-54)
	ldi r31,0
	ld r24,Z
	.loc 1 54 0
	andi r24,lo8(-65)
	st Z,r24
	.loc 1 55 0
	ld r24,Z
	.loc 1 55 0
	andi r24,lo8(127)
	st Z,r24
	.loc 1 57 0
	ld r24,Z
	.loc 1 57 0
	andi r24,lo8(-17)
	st Z,r24
	.loc 1 58 0
	ld r24,Z
	.loc 1 58 0
	ori r24,lo8(32)
	st Z,r24
	.loc 1 60 0
	ld r24,Z
	.loc 1 60 0
	andi r24,lo8(-9)
	st Z,r24
	.loc 1 62 0
	ld r24,Z
	.loc 1 62 0
	ori r24,lo8(2)
	st Z,r24
	.loc 1 63 0
	ld r24,Z
	.loc 1 63 0
	ori r24,lo8(4)
	st Z,r24
	.loc 1 64 0
	ld r24,X
	.loc 1 64 0
	andi r24,lo8(-5)
	st X,r24
	.loc 1 66 0
	ld r24,Z
	.loc 1 66 0
	st Z,r24
	ret
	.cfi_endproc
.LFE11:
	.size	init_usart, .-init_usart
	.section	.text.init_transmission_timer,"ax",@progbits
.global	init_transmission_timer
	.type	init_transmission_timer, @function
init_transmission_timer:
.LFB12:
	.loc 1 71 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 72 0
	in r24,0x24
	.loc 1 72 0
	andi r24,lo8(-65)
	out 0x24,r24
	.loc 1 73 0
	in r24,0x24
	.loc 1 73 0
	andi r24,lo8(127)
	out 0x24,r24
	.loc 1 75 0
	in r24,0x24
	.loc 1 75 0
	andi r24,lo8(-2)
	out 0x24,r24
	.loc 1 76 0
	in r24,0x24
	.loc 1 76 0
	andi r24,lo8(-3)
	out 0x24,r24
	.loc 1 77 0
	in r24,0x25
	.loc 1 77 0
	andi r24,lo8(-9)
	out 0x25,r24
	.loc 1 79 0
	in r24,0x25
	.loc 1 79 0
	andi r24,lo8(-2)
	out 0x25,r24
	.loc 1 80 0
	in r24,0x25
	.loc 1 80 0
	andi r24,lo8(-3)
	out 0x25,r24
	.loc 1 81 0
	in r24,0x25
	.loc 1 81 0
	ori r24,lo8(4)
	out 0x25,r24
	.loc 1 83 0
	ldi r24,lo8(100)
	out 0x27,r24
	.loc 1 85 0
	ldi r30,lo8(110)
	ldi r31,0
	ld r24,Z
	.loc 1 85 0
	ori r24,lo8(2)
	st Z,r24
	ret
	.cfi_endproc
.LFE12:
	.size	init_transmission_timer, .-init_transmission_timer
	.section	.text.daten_aufteilen,"ax",@progbits
.global	daten_aufteilen
	.type	daten_aufteilen, @function
daten_aufteilen:
.LFB13:
	.loc 1 90 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 91 0
	ldi r30,lo8(akku_daten)
	ldi r31,hi8(akku_daten)
	ld r24,Z
	sts temperatur,r24
	.loc 1 92 0
	ldd r24,Z+1
	ldi r25,0
	sts niedrige_akku_voltage+1,r25
	sts niedrige_akku_voltage,r24
	.loc 1 93 0
	ldd r18,Z+2
	lds r24,niedrige_akku_voltage
	lds r25,niedrige_akku_voltage+1
	or r25,r18
	sts niedrige_akku_voltage+1,r25
	sts niedrige_akku_voltage,r24
	.loc 1 94 0
	ldd r24,Z+3
	ldi r25,0
	sts ges_volatage+1,r25
	sts ges_volatage,r24
	.loc 1 95 0
	ldd r18,Z+4
	lds r24,ges_volatage
	lds r25,ges_volatage+1
	or r25,r18
	sts ges_volatage+1,r25
	sts ges_volatage,r24
	ret
	.cfi_endproc
.LFE13:
	.size	daten_aufteilen, .-daten_aufteilen
	.section	.text.save_akku_daten,"ax",@progbits
.global	save_akku_daten
	.type	save_akku_daten, @function
save_akku_daten:
.LFB14:
	.loc 1 100 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 102 0
	ldi r26,lo8(empfangs_daten)
	ldi r27,hi8(empfangs_daten)
	ld r24,X
	ldi r30,lo8(akku_daten)
	ldi r31,hi8(akku_daten)
	st Z,r24
	.loc 1 103 0
	adiw r26,1
	ld r24,X
	sbiw r26,1
	std Z+1,r24
	.loc 1 104 0
	adiw r26,2
	ld r24,X
	sbiw r26,2
	std Z+2,r24
	.loc 1 105 0
	adiw r26,3
	ld r24,X
	sbiw r26,3
	std Z+3,r24
	.loc 1 106 0
	adiw r26,4
	ld r24,X
	std Z+4,r24
	ret
	.cfi_endproc
.LFE14:
	.size	save_akku_daten, .-save_akku_daten
	.section	.text.ges_spannung_uebertragung,"ax",@progbits
.global	ges_spannung_uebertragung
	.type	ges_spannung_uebertragung, @function
ges_spannung_uebertragung:
.LFB15:
	.loc 1 113 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 114 0
	lds r24,ges_volatage
	lds r25,ges_volatage+1
	cpi r24,64
	sbci r25,-100
	brlo .L7
	.loc 1 114 0 is_stmt 0 discriminator 1
	lds r24,ges_volatage
	lds r25,ges_volatage+1
	cpi r24,-63
	sbci r25,-38
	brsh .L8
	.loc 1 116 0 is_stmt 1
	lds r24,ges_volatage
	lds r25,ges_volatage+1
	ret
.L7:
	.loc 1 120 0
	ldi r24,lo8(-128)
	ldi r25,lo8(-69)
	ret
.L8:
	ldi r24,lo8(-128)
	ldi r25,lo8(-69)
	.loc 1 124 0
	ret
	.cfi_endproc
.LFE15:
	.size	ges_spannung_uebertragung, .-ges_spannung_uebertragung
	.section	.text.niedrigste_akku_voltage_uebertragung,"ax",@progbits
.global	niedrigste_akku_voltage_uebertragung
	.type	niedrigste_akku_voltage_uebertragung, @function
niedrigste_akku_voltage_uebertragung:
.LFB16:
	.loc 1 126 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 127 0
	lds r24,niedrige_akku_voltage
	lds r25,niedrige_akku_voltage+1
	cpi r24,-16
	sbci r25,10
	brlo .L11
	.loc 1 127 0 is_stmt 0 discriminator 1
	lds r24,niedrige_akku_voltage
	lds r25,niedrige_akku_voltage+1
	cpi r24,-39
	sbci r25,14
	brsh .L12
	.loc 1 129 0 is_stmt 1
	lds r24,niedrige_akku_voltage
	lds r25,niedrige_akku_voltage+1
	ret
.L11:
	.loc 1 133 0
	ldi r24,lo8(-28)
	ldi r25,lo8(12)
	ret
.L12:
	ldi r24,lo8(-28)
	ldi r25,lo8(12)
	.loc 1 136 0
	ret
	.cfi_endproc
.LFE16:
	.size	niedrigste_akku_voltage_uebertragung, .-niedrigste_akku_voltage_uebertragung
	.section	.text.temperatur_uebertragung,"ax",@progbits
.global	temperatur_uebertragung
	.type	temperatur_uebertragung, @function
temperatur_uebertragung:
.LFB17:
	.loc 1 138 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 139 0
	lds r24,temperatur
	cpi r24,lo8(-95)
	brsh .L15
	.loc 1 141 0
	lds r24,temperatur
	ret
.L15:
	.loc 1 145 0
	ldi r24,lo8(20)
	.loc 1 149 0
	ret
	.cfi_endproc
.LFE17:
	.size	temperatur_uebertragung, .-temperatur_uebertragung
	.section	.text.__vector_25,"ax",@progbits
.global	__vector_25
	.type	__vector_25, @function
__vector_25:
.LFB18:
	.loc 1 152 0
	.cfi_startproc
	push r1
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 155 0
	lds r24,start
	cpi r24,lo8(1)
	brne .L17
	.loc 1 155 0 is_stmt 0 discriminator 1
	lds r24,overflow_counter
	cpi r24,lo8(5)
	brsh .L18
.L17:
	.loc 1 155 0 discriminator 3
	lds r24,zahler_uebertragung
	tst r24
	breq .L16
.L18:
	.loc 1 159 0 is_stmt 1
	sts overflow_counter,__zero_reg__
	.loc 1 160 0
	out 0x26,__zero_reg__
	.loc 1 163 0
	lds r30,zahler_uebertragung
	ldi r31,0
	.loc 1 163 0
	lds r24,206
	.loc 1 163 0
	subi r30,lo8(-(empfangs_daten))
	sbci r31,hi8(-(empfangs_daten))
	st Z,r24
	.loc 1 166 0
	lds r24,zahler_uebertragung
	cpi r24,lo8(4)
	brne .L20
	.loc 1 168 0
	call save_akku_daten
.LVL0:
.L20:
	.loc 1 171 0
	lds r24,zahler_uebertragung
	subi r24,lo8(-(1))
	sts zahler_uebertragung,r24
.L16:
/* epilogue start */
	.loc 1 175 0
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
.LFE18:
	.size	__vector_25, .-__vector_25
	.section	.text.__vector_21,"ax",@progbits
.global	__vector_21
	.type	__vector_21, @function
__vector_21:
.LFB19:
	.loc 1 177 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r19
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 19, -5
	push r20
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 20, -6
	push r21
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 21, -7
	push r22
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 22, -8
	push r23
.LCFI21:
	.cfi_def_cfa_offset 10
	.cfi_offset 23, -9
	push r24
.LCFI22:
	.cfi_def_cfa_offset 11
	.cfi_offset 24, -10
	push r25
.LCFI23:
	.cfi_def_cfa_offset 12
	.cfi_offset 25, -11
	push r26
.LCFI24:
	.cfi_def_cfa_offset 13
	.cfi_offset 26, -12
	push r27
.LCFI25:
	.cfi_def_cfa_offset 14
	.cfi_offset 27, -13
	push r30
.LCFI26:
	.cfi_def_cfa_offset 15
	.cfi_offset 30, -14
	push r31
.LCFI27:
	.cfi_def_cfa_offset 16
	.cfi_offset 31, -15
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 15 */
.L__stack_usage = 15
	.loc 1 178 0
	out 0x26,__zero_reg__
	.loc 1 179 0
	ldi r24,lo8(1)
	sts start,r24
	.loc 1 183 0
	sts zahler_uebertragung,__zero_reg__
	.loc 1 186 0
	lds r24,overflow_counter
	subi r24,lo8(-(1))
	sts overflow_counter,r24
	.loc 1 188 0
	cpi r24,lo8(2)
	brne .L22
	.loc 1 190 0
	call daten_aufteilen
.LVL1:
.L22:
	.loc 1 193 0
	lds r24,overflow_counter
	cpi r24,lo8(-5)
	brlo .L21
	.loc 1 195 0
	ldi r24,lo8(-6)
	sts overflow_counter,r24
.L21:
/* epilogue start */
	.loc 1 198 0
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
.LFE19:
	.size	__vector_21, .-__vector_21
.global	counter_falsch
	.section	.bss.counter_falsch,"aw",@nobits
	.type	counter_falsch, @object
	.size	counter_falsch, 1
counter_falsch:
	.zero	1
	.comm	empfang_test,1,1
.global	ges_volatage
	.section	.bss.ges_volatage,"aw",@nobits
	.type	ges_volatage, @object
	.size	ges_volatage, 2
ges_volatage:
	.zero	2
	.comm	temperatur,1,1
	.comm	niedrige_akku_voltage,2,1
.global	overflow_counter
	.section	.bss.overflow_counter,"aw",@nobits
	.type	overflow_counter, @object
	.size	overflow_counter, 1
overflow_counter:
	.zero	1
	.comm	akku_daten,5,1
	.comm	empfangs_daten,5,1
.global	zahler_uebertragung
	.section	.bss.zahler_uebertragung,"aw",@nobits
	.type	zahler_uebertragung, @object
	.size	zahler_uebertragung, 1
zahler_uebertragung:
	.zero	1
.global	bf
	.section	.bss.bf,"aw",@nobits
	.type	bf, @object
	.size	bf, 1
bf:
	.zero	1
.global	start
	.section	.bss.start,"aw",@nobits
	.type	start, @object
	.size	start, 1
start:
	.zero	1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x25e
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF30
	.byte	0xc
	.long	.LASF31
	.long	.LASF32
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x2
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
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x80
	.long	0x54
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF6
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x5
	.byte	0x1
	.long	.LASF10
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF11
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF12
	.byte	0x1
	.byte	0x59
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x70
	.byte	0x1
	.long	0x49
	.long	.LFB15
	.long	.LFE15
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.long	0x49
	.long	.LFB16
	.long	.LFE16
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x6
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0x89
	.byte	0x1
	.long	0x30
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.long	.LFB18
	.long	.LFE18
	.long	.LLST0
	.byte	0x1
	.long	0x148
	.uleb128 0x8
	.long	.LVL0
	.long	0xc0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0xb0
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.long	.LLST1
	.byte	0x1
	.long	0x16c
	.uleb128 0x8
	.long	.LVL1
	.long	0xaa
	.byte	0
	.uleb128 0x9
	.long	.LASF19
	.byte	0x1
	.byte	0x1a
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	start
	.uleb128 0xa
	.string	"bf"
	.byte	0x1
	.byte	0x1c
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	bf
	.uleb128 0x9
	.long	.LASF20
	.byte	0x1
	.byte	0x1e
	.long	0x1a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	zahler_uebertragung
	.uleb128 0xb
	.long	0x30
	.uleb128 0xc
	.long	0x1bd
	.long	0x1b6
	.uleb128 0xd
	.long	0x1b6
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF21
	.uleb128 0xb
	.long	0x3b
	.uleb128 0x9
	.long	.LASF22
	.byte	0x1
	.byte	0x20
	.long	0x1d4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	empfangs_daten
	.uleb128 0xb
	.long	0x1a6
	.uleb128 0x9
	.long	.LASF23
	.byte	0x1
	.byte	0x21
	.long	0x1eb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	akku_daten
	.uleb128 0xb
	.long	0x1a6
	.uleb128 0x9
	.long	.LASF24
	.byte	0x1
	.byte	0x22
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	overflow_counter
	.uleb128 0x9
	.long	.LASF25
	.byte	0x1
	.byte	0x24
	.long	0x214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	niedrige_akku_voltage
	.uleb128 0xb
	.long	0x49
	.uleb128 0x9
	.long	.LASF26
	.byte	0x1
	.byte	0x25
	.long	0x1a1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	temperatur
	.uleb128 0x9
	.long	.LASF27
	.byte	0x1
	.byte	0x27
	.long	0x214
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ges_volatage
	.uleb128 0x9
	.long	.LASF28
	.byte	0x1
	.byte	0x29
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	empfang_test
	.uleb128 0x9
	.long	.LASF29
	.byte	0x1
	.byte	0x2b
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	counter_falsch
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
	.uleb128 0xa
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
	.uleb128 0x6
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB18
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
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI13
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
.LLST1:
	.long	.LFB19
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 11
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 12
	.long	.LCFI24
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 13
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 14
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 15
	.long	.LCFI27
	.long	.LFE19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x5c
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
	.long	.LFB18
	.long	.LFE18-.LFB18
	.long	.LFB19
	.long	.LFE19-.LFB19
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
	.long	.LFB18
	.long	.LFE18
	.long	.LFB19
	.long	.LFE19
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF15:
	.string	"niedrigste_akku_voltage_uebertragung"
.LASF32:
	.string	"C:\\\\Users\\\\Armin Baumgartner\\\\Desktop\\\\ansteuerung\\\\ansteuerung\\\\Debug"
.LASF25:
	.string	"niedrige_akku_voltage"
.LASF19:
	.string	"start"
.LASF11:
	.string	"init_transmission_timer"
.LASF20:
	.string	"zahler_uebertragung"
.LASF27:
	.string	"ges_volatage"
.LASF1:
	.string	"unsigned char"
.LASF30:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF6:
	.string	"long unsigned int"
.LASF22:
	.string	"empfangs_daten"
.LASF14:
	.string	"ges_spannung_uebertragung"
.LASF10:
	.string	"init_usart"
.LASF4:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF2:
	.string	"uint8_t"
.LASF31:
	.string	".././kommunikation.c"
.LASF24:
	.string	"overflow_counter"
.LASF21:
	.string	"sizetype"
.LASF28:
	.string	"empfang_test"
.LASF7:
	.string	"long long int"
.LASF16:
	.string	"temperatur_uebertragung"
.LASF9:
	.string	"char"
.LASF18:
	.string	"__vector_21"
.LASF3:
	.string	"uint16_t"
.LASF23:
	.string	"akku_daten"
.LASF17:
	.string	"__vector_25"
.LASF5:
	.string	"long int"
.LASF26:
	.string	"temperatur"
.LASF29:
	.string	"counter_falsch"
.LASF0:
	.string	"signed char"
.LASF12:
	.string	"daten_aufteilen"
.LASF13:
	.string	"save_akku_daten"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_clear_bss

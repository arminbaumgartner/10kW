	.file	"berechnung.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.Init_Timer1,"ax",@progbits
.global	Init_Timer1
	.type	Init_Timer1, @function
Init_Timer1:
.LFB11:
	.file 1 ".././berechnung.c"
	.loc 1 56 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 57 0
	ldi r30,lo8(-127)
	ldi r31,0
	ld r24,Z
	.loc 1 57 0
	ori r24,lo8(1)
	st Z,r24
	.loc 1 58 0
	ld r24,Z
	.loc 1 58 0
	ori r24,lo8(2)
	st Z,r24
	.loc 1 59 0
	ld r24,Z
	.loc 1 59 0
	andi r24,lo8(-5)
	st Z,r24
	.loc 1 61 0
	ldi r30,lo8(111)
	ldi r31,0
	ld r24,Z
	.loc 1 61 0
	ori r24,lo8(1)
	st Z,r24
	ret
	.cfi_endproc
.LFE11:
	.size	Init_Timer1, .-Init_Timer1
	.section	.text.geschwindigkeit_auslesen,"ax",@progbits
.global	geschwindigkeit_auslesen
	.type	geschwindigkeit_auslesen, @function
geschwindigkeit_auslesen:
.LFB12:
	.loc 1 64 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 66 0
	sts overflow,__zero_reg__
	.loc 1 67 0
	ldi r30,lo8(-124)
	ldi r31,0
	ld r24,Z
	ldd r25,Z+1
	.loc 1 67 0
	sts steps+1,r25
	sts steps,r24
	.loc 1 68 0
	std Z+1,__zero_reg__
	st Z,__zero_reg__
	ret
	.cfi_endproc
.LFE12:
	.size	geschwindigkeit_auslesen, .-geschwindigkeit_auslesen
.global	__floatunsisf
.global	__divsf3
.global	__floatsisf
.global	__mulsf3
	.section	.text.drehzahl_berechnung,"ax",@progbits
.global	drehzahl_berechnung
	.type	drehzahl_berechnung, @function
drehzahl_berechnung:
.LFB13:
	.loc 1 73 0
	.cfi_startproc
	push r8
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 74 0
	lds r24,overflow
	tst r24
	breq .L4
	.loc 1 76 0
	ldi r24,lo8(-104)
	ldi r25,lo8(58)
	sts steps+1,r25
	sts steps,r24
	.loc 1 77 0
	sts drehzahl,__zero_reg__
	sts drehzahl+1,__zero_reg__
	sts drehzahl+2,__zero_reg__
	sts drehzahl+3,__zero_reg__
	.loc 1 78 0
	sts drehzahl_pro_sekunde,__zero_reg__
	sts drehzahl_pro_sekunde+1,__zero_reg__
	sts drehzahl_pro_sekunde+2,__zero_reg__
	sts drehzahl_pro_sekunde+3,__zero_reg__
	.loc 1 79 0
	sts step_dauer,__zero_reg__
	sts step_dauer+1,__zero_reg__
	sts step_dauer+2,__zero_reg__
	sts step_dauer+3,__zero_reg__
	rjmp .L3
.L4:
	.loc 1 84 0
	lds r24,steps
	lds r25,steps+1
	sbiw r24,40
	brsh .+2
	rjmp .L3
	.loc 1 87 0
	lds r24,steps
	lds r25,steps+1
	cpi r24,-116
	sbci r25,60
	brlo .L6
	.loc 1 89 0
	ldi r24,lo8(-116)
	ldi r25,lo8(60)
	sts steps+1,r25
	sts steps,r24
.L6:
	.loc 1 94 0
	lds r18,steps
	lds r19,steps+1
	lds r24,timer1_teiler_mult
	lds r25,timer1_teiler_mult+1
	mul r18,r24
	movw r22,r0
	mul r18,r25
	add r23,r0
	mul r19,r24
	add r23,r0
	clr r1
	ldi r24,0
	ldi r25,0
	call __floatunsisf
.LVL0:
	sts step_dauer,r22
	sts step_dauer+1,r23
	sts step_dauer+2,r24
	sts step_dauer+3,r25
	.loc 1 95 0
	lds r22,step_dauer
	lds r23,step_dauer+1
	lds r24,step_dauer+2
	lds r25,step_dauer+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-56)
	ldi r21,lo8(66)
	call __divsf3
.LVL1:
	sts step_dauer,r22
	sts step_dauer+1,r23
	sts step_dauer+2,r24
	sts step_dauer+3,r25
	.loc 1 98 0
	lds r8,step_dauer
	lds r9,step_dauer+1
	lds r10,step_dauer+2
	lds r11,step_dauer+3
	lds r22,motor_teiler
	lds r23,motor_teiler+1
	mov __tmp_reg__,r23
	lsl r0
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
.LVL2:
	movw r12,r22
	movw r14,r24
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-64)
	ldi r21,lo8(64)
	movw r24,r10
	movw r22,r8
	call __mulsf3
.LVL3:
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __mulsf3
.LVL4:
	sts step_dauer_help,r22
	sts step_dauer_help+1,r23
	sts step_dauer_help+2,r24
	sts step_dauer_help+3,r25
	.loc 1 99 0
	lds r22,step_dauer_help
	lds r23,step_dauer_help+1
	lds r24,step_dauer_help+2
	lds r25,step_dauer_help+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	call __divsf3
.LVL5:
	sts step_dauer_help,r22
	sts step_dauer_help+1,r23
	sts step_dauer_help+2,r24
	sts step_dauer_help+3,r25
	.loc 1 101 0
	lds r18,step_dauer_help
	lds r19,step_dauer_help+1
	lds r20,step_dauer_help+2
	lds r21,step_dauer_help+3
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(122)
	ldi r25,lo8(68)
	call __divsf3
.LVL6:
	sts drehzahl_pro_sekunde,r22
	sts drehzahl_pro_sekunde+1,r23
	sts drehzahl_pro_sekunde+2,r24
	sts drehzahl_pro_sekunde+3,r25
	.loc 1 103 0
	lds r22,drehzahl_pro_sekunde
	lds r23,drehzahl_pro_sekunde+1
	lds r24,drehzahl_pro_sekunde+2
	lds r25,drehzahl_pro_sekunde+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(112)
	ldi r21,lo8(66)
	call __mulsf3
.LVL7:
	sts drehzahl,r22
	sts drehzahl+1,r23
	sts drehzahl+2,r24
	sts drehzahl+3,r25
	.loc 1 110 0
	lds r24,drehzahl_mittelung_hilfe
	mov r30,r24
	ldi r31,0
	lds r20,drehzahl
	lds r21,drehzahl+1
	lds r22,drehzahl+2
	lds r23,drehzahl+3
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(drehzahl_mittelung))
	sbci r31,hi8(-(drehzahl_mittelung))
	st Z,r20
	std Z+1,r21
	std Z+2,r22
	std Z+3,r23
	.loc 1 111 0
	subi r24,lo8(-(1))
	.loc 1 113 0
	cpi r24,lo8(3)
	brsh .L7
	.loc 1 111 0
	sts drehzahl_mittelung_hilfe,r24
	rjmp .L3
.L7:
	.loc 1 115 0
	sts drehzahl_mittelung_hilfe,__zero_reg__
.L3:
/* epilogue start */
	.loc 1 121 0
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE13:
	.size	drehzahl_berechnung, .-drehzahl_berechnung
.global	__fixunssfsi
	.section	.text.geschwindigkeit_berechnung,"ax",@progbits
.global	geschwindigkeit_berechnung
	.type	geschwindigkeit_berechnung, @function
geschwindigkeit_berechnung:
.LFB14:
	.loc 1 123 0
	.cfi_startproc
	push r8
.LCFI8:
	.cfi_def_cfa_offset 3
	.cfi_offset 8, -2
	push r9
.LCFI9:
	.cfi_def_cfa_offset 4
	.cfi_offset 9, -3
	push r10
.LCFI10:
	.cfi_def_cfa_offset 5
	.cfi_offset 10, -4
	push r11
.LCFI11:
	.cfi_def_cfa_offset 6
	.cfi_offset 11, -5
	push r12
.LCFI12:
	.cfi_def_cfa_offset 7
	.cfi_offset 12, -6
	push r13
.LCFI13:
	.cfi_def_cfa_offset 8
	.cfi_offset 13, -7
	push r14
.LCFI14:
	.cfi_def_cfa_offset 9
	.cfi_offset 14, -8
	push r15
.LCFI15:
	.cfi_def_cfa_offset 10
	.cfi_offset 15, -9
/* prologue: function */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 125 0
	lds r24,overflow
	tst r24
	breq .L9
	.loc 1 127 0
	sts steps+1,__zero_reg__
	sts steps,__zero_reg__
	.loc 1 128 0
	sts geschwindigkeit,__zero_reg__
	sts geschwindigkeit+1,__zero_reg__
	sts geschwindigkeit+2,__zero_reg__
	sts geschwindigkeit+3,__zero_reg__
	.loc 1 129 0
	sts drehzahl,__zero_reg__
	sts drehzahl+1,__zero_reg__
	sts drehzahl+2,__zero_reg__
	sts drehzahl+3,__zero_reg__
	.loc 1 130 0
	sts drehzahl_pro_sekunde,__zero_reg__
	sts drehzahl_pro_sekunde+1,__zero_reg__
	sts drehzahl_pro_sekunde+2,__zero_reg__
	sts drehzahl_pro_sekunde+3,__zero_reg__
	.loc 1 131 0
	sts step_dauer,__zero_reg__
	sts step_dauer+1,__zero_reg__
	sts step_dauer+2,__zero_reg__
	sts step_dauer+3,__zero_reg__
	rjmp .L8
.L9:
	.loc 1 136 0
	lds r22,drehzahl
	lds r23,drehzahl+1
	lds r24,drehzahl+2
	lds r25,drehzahl+3
	call __fixunssfsi
.LVL8:
	sts drehzahl_ausgabe_01+1,r23
	sts drehzahl_ausgabe_01,r22
	.loc 1 138 0
	lds r22,drehzahl_pro_sekunde
	lds r23,drehzahl_pro_sekunde+1
	lds r24,drehzahl_pro_sekunde+2
	lds r25,drehzahl_pro_sekunde+3
	lds r8,raddurchmesser
	lds r9,raddurchmesser+1
	lds r10,raddurchmesser+2
	lds r11,raddurchmesser+3
	lds r12,uebersetzung
	lds r13,uebersetzung+1
	lds r14,uebersetzung+2
	lds r15,uebersetzung+3
	movw r20,r10
	movw r18,r8
	call __mulsf3
.LVL9:
	ldi r18,lo8(-61)
	ldi r19,lo8(-11)
	ldi r20,lo8(72)
	ldi r21,lo8(64)
	call __mulsf3
.LVL10:
	movw r20,r14
	movw r18,r12
	call __divsf3
.LVL11:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __mulsf3
.LVL12:
	sts geschwindigkeit_help,r22
	sts geschwindigkeit_help+1,r23
	sts geschwindigkeit_help+2,r24
	sts geschwindigkeit_help+3,r25
	.loc 1 143 0
	lds r18,drehzahl_pro_sekunde
	lds r19,drehzahl_pro_sekunde+1
	lds r20,drehzahl_pro_sekunde+2
	lds r21,drehzahl_pro_sekunde+3
	movw r24,r10
	movw r22,r8
	call __mulsf3
.LVL13:
	ldi r18,lo8(-61)
	ldi r19,lo8(-11)
	ldi r20,lo8(72)
	ldi r21,lo8(64)
	call __mulsf3
.LVL14:
	movw r20,r14
	movw r18,r12
	call __divsf3
.LVL15:
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(102)
	ldi r21,lo8(64)
	call __mulsf3
.LVL16:
	sts geschwindigkeit_help,r22
	sts geschwindigkeit_help+1,r23
	sts geschwindigkeit_help+2,r24
	sts geschwindigkeit_help+3,r25
	.loc 1 144 0
	lds r22,geschwindigkeit_help
	lds r23,geschwindigkeit_help+1
	lds r24,geschwindigkeit_help+2
	lds r25,geschwindigkeit_help+3
	call ceil
.LVL17:
	sts geschwindigkeit,r22
	sts geschwindigkeit+1,r23
	sts geschwindigkeit+2,r24
	sts geschwindigkeit+3,r25
	.loc 1 146 0
	lds r22,geschwindigkeit
	lds r23,geschwindigkeit+1
	lds r24,geschwindigkeit+2
	lds r25,geschwindigkeit+3
	call __fixunssfsi
.LVL18:
	sts geschwindigkeit_ausgabe+1,r23
	sts geschwindigkeit_ausgabe,r22
.L8:
/* epilogue start */
	.loc 1 151 0
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	ret
	.cfi_endproc
.LFE14:
	.size	geschwindigkeit_berechnung, .-geschwindigkeit_berechnung
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"    "
.LC1:
	.string	"%d"
	.section	.text.drehzahl_ausgabe,"ax",@progbits
.global	drehzahl_ausgabe
	.type	drehzahl_ausgabe, @function
drehzahl_ausgabe:
.LFB15:
	.loc 1 154 0
	.cfi_startproc
	push r28
.LCFI16:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI17:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 155 0
	ldi r28,lo8(ausgabe)
	ldi r29,hi8(ausgabe)
	ldi r24,lo8(5)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 156 0
	ldi r24,lo8(-117)
	call LCD_cmd
.LVL19:
	.loc 1 157 0
	movw r24,r28
	call LCD_string
.LVL20:
	.loc 1 159 0
	lds r24,drehzahl_ausgabe_01
	lds r25,drehzahl_ausgabe_01+1
	push r25
.LCFI18:
	.cfi_def_cfa_offset 5
	push r24
.LCFI19:
	.cfi_def_cfa_offset 6
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
.LCFI20:
	.cfi_def_cfa_offset 7
	push r24
.LCFI21:
	.cfi_def_cfa_offset 8
	push r29
.LCFI22:
	.cfi_def_cfa_offset 9
	push r28
.LCFI23:
	.cfi_def_cfa_offset 10
	call sprintf
.LVL21:
	.loc 1 160 0
	ldi r24,lo8(-118)
	call LCD_cmd
.LVL22:
	.loc 1 161 0
	movw r24,r28
	call LCD_string
.LVL23:
	.loc 1 162 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI24:
	.cfi_def_cfa_offset 4
/* epilogue start */
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE15:
	.size	drehzahl_ausgabe, .-drehzahl_ausgabe
	.section	.text.geschwindigkeits_ausgabe,"ax",@progbits
.global	geschwindigkeits_ausgabe
	.type	geschwindigkeits_ausgabe, @function
geschwindigkeits_ausgabe:
.LFB16:
	.loc 1 165 0
	.cfi_startproc
	push r28
.LCFI25:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI26:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 1 166 0
	ldi r28,lo8(ausgabe)
	ldi r29,hi8(ausgabe)
	ldi r24,lo8(5)
	ldi r30,lo8(.LC0)
	ldi r31,hi8(.LC0)
	movw r26,r28
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 1 167 0
	ldi r24,lo8(-53)
	call LCD_cmd
.LVL24:
	.loc 1 168 0
	movw r24,r28
	call LCD_string
.LVL25:
	.loc 1 170 0
	lds r24,geschwindigkeit_ausgabe
	lds r25,geschwindigkeit_ausgabe+1
	push r25
.LCFI27:
	.cfi_def_cfa_offset 5
	push r24
.LCFI28:
	.cfi_def_cfa_offset 6
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	push r25
.LCFI29:
	.cfi_def_cfa_offset 7
	push r24
.LCFI30:
	.cfi_def_cfa_offset 8
	push r29
.LCFI31:
	.cfi_def_cfa_offset 9
	push r28
.LCFI32:
	.cfi_def_cfa_offset 10
	call sprintf
.LVL26:
	.loc 1 171 0
	ldi r24,lo8(-54)
	call LCD_cmd
.LVL27:
	.loc 1 172 0
	movw r24,r28
	call LCD_string
.LVL28:
	.loc 1 173 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI33:
	.cfi_def_cfa_offset 4
/* epilogue start */
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE16:
	.size	geschwindigkeits_ausgabe, .-geschwindigkeits_ausgabe
	.section	.text.preset_drehzahl_gesch,"ax",@progbits
.global	preset_drehzahl_gesch
	.type	preset_drehzahl_gesch, @function
preset_drehzahl_gesch:
.LFB17:
	.loc 1 175 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 176 0
	sts drehzahl,__zero_reg__
	sts drehzahl+1,__zero_reg__
	sts drehzahl+2,__zero_reg__
	sts drehzahl+3,__zero_reg__
	.loc 1 177 0
	sts geschwindigkeit,__zero_reg__
	sts geschwindigkeit+1,__zero_reg__
	sts geschwindigkeit+2,__zero_reg__
	sts geschwindigkeit+3,__zero_reg__
	ret
	.cfi_endproc
.LFE17:
	.size	preset_drehzahl_gesch, .-preset_drehzahl_gesch
.global	__eqsf2
	.section	.text.umschalt_null,"ax",@progbits
.global	umschalt_null
	.type	umschalt_null, @function
umschalt_null:
.LFB18:
	.loc 1 180 0
	.cfi_startproc
	push r28
.LCFI34:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	.loc 1 181 0
	lds r22,drehzahl
	lds r23,drehzahl+1
	lds r24,drehzahl+2
	lds r25,drehzahl+3
	ldi r28,lo8(1)
	ldi r18,0
	ldi r19,0
	movw r20,r18
	call __eqsf2
.LVL29:
	cpse r24,__zero_reg__
	ldi r28,0
.L15:
	.loc 1 190 0
	mov r24,r28
/* epilogue start */
	pop r28
	ret
	.cfi_endproc
.LFE18:
	.size	umschalt_null, .-umschalt_null
	.section	.text.drehzahl_save,"ax",@progbits
.global	drehzahl_save
	.type	drehzahl_save, @function
drehzahl_save:
.LFB19:
	.loc 1 192 0
	.cfi_startproc
.LVL30:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 193 0
	sts drehzahl_alt_ermittelt,r22
	sts drehzahl_alt_ermittelt+1,r23
	sts drehzahl_alt_ermittelt+2,r24
	sts drehzahl_alt_ermittelt+3,r25
	ret
	.cfi_endproc
.LFE19:
	.size	drehzahl_save, .-drehzahl_save
	.section	.text.drehzahl_holen,"ax",@progbits
.global	drehzahl_holen
	.type	drehzahl_holen, @function
drehzahl_holen:
.LFB20:
	.loc 1 196 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 197 0
	lds r22,drehzahl
	lds r23,drehzahl+1
	lds r24,drehzahl+2
	lds r25,drehzahl+3
	.loc 1 198 0
	ret
	.cfi_endproc
.LFE20:
	.size	drehzahl_holen, .-drehzahl_holen
.global	__addsf3
	.section	.text.gemittelte_drehzahl_holen,"ax",@progbits
.global	gemittelte_drehzahl_holen
	.type	gemittelte_drehzahl_holen, @function
gemittelte_drehzahl_holen:
.LFB21:
	.loc 1 200 0
	.cfi_startproc
	push r12
.LCFI35:
	.cfi_def_cfa_offset 3
	.cfi_offset 12, -2
	push r13
.LCFI36:
	.cfi_def_cfa_offset 4
	.cfi_offset 13, -3
	push r14
.LCFI37:
	.cfi_def_cfa_offset 5
	.cfi_offset 14, -4
	push r15
.LCFI38:
	.cfi_def_cfa_offset 6
	.cfi_offset 15, -5
	push r28
.LCFI39:
	.cfi_def_cfa_offset 7
	.cfi_offset 28, -6
	push r29
.LCFI40:
	.cfi_def_cfa_offset 8
	.cfi_offset 29, -7
/* prologue: function */
/* frame size = 0 */
/* stack size = 6 */
.L__stack_usage = 6
.LVL31:
.LBB2:
	.loc 1 203 0
	ldi r28,0
	ldi r29,0
.LBE2:
	.loc 1 201 0
	mov r12,__zero_reg__
	mov r13,__zero_reg__
	movw r14,r12
.LVL32:
.L19:
.LBB3:
	.loc 1 205 0 discriminator 3
	movw r30,r28
	lsl r30
	rol r31
	lsl r30
	rol r31
	subi r30,lo8(-(drehzahl_mittelung))
	sbci r31,hi8(-(drehzahl_mittelung))
	ld r22,Z
	ldd r23,Z+1
	ldd r24,Z+2
	ldd r25,Z+3
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(64)
	ldi r21,lo8(64)
	call __divsf3
.LVL33:
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __addsf3
.LVL34:
	movw r12,r22
	movw r14,r24
.LVL35:
	.loc 1 203 0 discriminator 3
	adiw r28,1
.LVL36:
	cpi r28,3
	cpc r29,__zero_reg__
	brne .L19
/* epilogue start */
.LBE3:
	.loc 1 210 0
	pop r29
	pop r28
.LVL37:
	pop r15
	pop r14
	pop r13
	pop r12
.LVL38:
	ret
	.cfi_endproc
.LFE21:
	.size	gemittelte_drehzahl_holen, .-gemittelte_drehzahl_holen
	.section	.text.drehzahl_alt_holen,"ax",@progbits
.global	drehzahl_alt_holen
	.type	drehzahl_alt_holen, @function
drehzahl_alt_holen:
.LFB22:
	.loc 1 212 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 213 0
	lds r22,drehzahl_alt_ermittelt
	lds r23,drehzahl_alt_ermittelt+1
	lds r24,drehzahl_alt_ermittelt+2
	lds r25,drehzahl_alt_ermittelt+3
	.loc 1 214 0
	ret
	.cfi_endproc
.LFE22:
	.size	drehzahl_alt_holen, .-drehzahl_alt_holen
	.section	.text.__vector_20,"ax",@progbits
.global	__vector_20
	.type	__vector_20, @function
__vector_20:
.LFB23:
	.loc 1 217 0
	.cfi_startproc
	push r1
.LCFI41:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI42:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r24
.LCFI43:
	.cfi_def_cfa_offset 5
	.cfi_offset 24, -4
	push r25
.LCFI44:
	.cfi_def_cfa_offset 6
	.cfi_offset 25, -5
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 5 */
.L__stack_usage = 5
	.loc 1 219 0
	ldi r24,lo8(1)
	sts overflow,r24
	.loc 1 221 0
	ldi r24,lo8(-116)
	ldi r25,lo8(60)
	sts steps+1,r25
	sts steps,r24
	.loc 1 222 0
	sts geschwindigkeit,__zero_reg__
	sts geschwindigkeit+1,__zero_reg__
	sts geschwindigkeit+2,__zero_reg__
	sts geschwindigkeit+3,__zero_reg__
	.loc 1 223 0
	sts geschwindigkeit_ausgabe+1,__zero_reg__
	sts geschwindigkeit_ausgabe,__zero_reg__
	.loc 1 224 0
	sts drehzahl,__zero_reg__
	sts drehzahl+1,__zero_reg__
	sts drehzahl+2,__zero_reg__
	sts drehzahl+3,__zero_reg__
	.loc 1 225 0
	sts drehzahl_ausgabe_01+1,__zero_reg__
	sts drehzahl_ausgabe_01,__zero_reg__
	.loc 1 226 0
	sts drehzahl_pro_sekunde,__zero_reg__
	sts drehzahl_pro_sekunde+1,__zero_reg__
	sts drehzahl_pro_sekunde+2,__zero_reg__
	sts drehzahl_pro_sekunde+3,__zero_reg__
	.loc 1 227 0
	sts step_dauer,__zero_reg__
	sts step_dauer+1,__zero_reg__
	sts step_dauer+2,__zero_reg__
	sts step_dauer+3,__zero_reg__
/* epilogue start */
	.loc 1 229 0
	pop r25
	pop r24
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
	.cfi_endproc
.LFE23:
	.size	__vector_20, .-__vector_20
	.comm	ausgabe,10,1
	.comm	drehzahl_ausgabe_01,2,1
	.comm	geschwindigkeit_ausgabe,2,1
	.comm	drehzahl_mittelung,12,1
.global	drehzahl_mittelung_hilfe
	.section	.bss.drehzahl_mittelung_hilfe,"aw",@nobits
	.type	drehzahl_mittelung_hilfe, @object
	.size	drehzahl_mittelung_hilfe, 1
drehzahl_mittelung_hilfe:
	.zero	1
.global	drehzahl_alt_ermittelt
	.section	.bss.drehzahl_alt_ermittelt,"aw",@nobits
	.type	drehzahl_alt_ermittelt, @object
	.size	drehzahl_alt_ermittelt, 4
drehzahl_alt_ermittelt:
	.zero	4
	.comm	drehzahl,4,1
	.comm	geschwindigkeit,4,1
	.comm	geschwindigkeit_help,4,1
	.comm	drehzahl_pro_sekunde,4,1
	.comm	step_dauer_help,4,1
	.comm	step_dauer,4,1
	.comm	overflow,1,1
.global	raddurchmesser
	.section	.data.raddurchmesser,"aw",@progbits
	.type	raddurchmesser, @object
	.size	raddurchmesser, 4
raddurchmesser:
	.byte	-51
	.byte	-52
	.byte	76
	.byte	62
.global	uebersetzung
	.section	.data.uebersetzung,"aw",@progbits
	.type	uebersetzung, @object
	.size	uebersetzung, 4
uebersetzung:
	.byte	0
	.byte	0
	.byte	-128
	.byte	63
.global	motor_teiler
	.section	.data.motor_teiler,"aw",@progbits
	.type	motor_teiler, @object
	.size	motor_teiler, 2
motor_teiler:
	.word	3
.global	timer1_teiler_mult
	.section	.data.timer1_teiler_mult,"aw",@progbits
	.type	timer1_teiler_mult, @object
	.size	timer1_teiler_mult, 2
timer1_teiler_mult:
	.word	4
	.comm	steps,2,1
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\math.h"
	.file 4 ".././lcd.h"
	.file 5 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x479
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF47
	.byte	0xc
	.long	.LASF48
	.long	.LASF49
	.long	.Ldebug_ranges0+0x18
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
	.byte	0x37
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
	.byte	0x3f
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
	.long	.LASF12
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.long	.LLST0
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST1
	.byte	0x1
	.long	0xe4
	.uleb128 0x8
	.long	.LVL17
	.long	0x447
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST2
	.byte	0x1
	.long	0x15e
	.uleb128 0xa
	.long	.LVL19
	.long	0x454
	.long	0x112
	.uleb128 0xb
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x8b
	.byte	0
	.uleb128 0xa
	.long	.LVL20
	.long	0x461
	.long	0x12b
	.uleb128 0xb
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LVL21
	.long	0x46e
	.uleb128 0xa
	.long	.LVL22
	.long	0x454
	.long	0x148
	.uleb128 0xb
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x8a
	.byte	0
	.uleb128 0xc
	.long	.LVL23
	.long	0x461
	.uleb128 0xb
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0xa4
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST3
	.byte	0x1
	.long	0x1d8
	.uleb128 0xa
	.long	.LVL24
	.long	0x454
	.long	0x18c
	.uleb128 0xb
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xcb
	.byte	0
	.uleb128 0xa
	.long	.LVL25
	.long	0x461
	.long	0x1a5
	.uleb128 0xb
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x8
	.long	.LVL26
	.long	0x46e
	.uleb128 0xa
	.long	.LVL27
	.long	0x454
	.long	0x1c2
	.uleb128 0xb
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xca
	.byte	0
	.uleb128 0xc
	.long	.LVL28
	.long	0x461
	.uleb128 0xb
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.long	.LASF16
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0xb3
	.byte	0x1
	.long	0x77
	.long	.LFB18
	.long	.LFE18
	.long	.LLST4
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.long	.LASF17
	.byte	0x1
	.byte	0xbf
	.byte	0x1
	.long	.LFB19
	.long	.LFE19
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x23b
	.uleb128 0xf
	.long	.LASF50
	.byte	0x1
	.byte	0xbf
	.long	0x23b
	.byte	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF18
	.uleb128 0x10
	.byte	0x1
	.long	.LASF20
	.byte	0x1
	.byte	0xc3
	.byte	0x1
	.long	0x23b
	.long	.LFB20
	.long	.LFE20
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	0x23b
	.long	.LFB21
	.long	.LFE21
	.long	.LLST5
	.byte	0x1
	.long	0x29d
	.uleb128 0x12
	.long	.LASF21
	.byte	0x1
	.byte	0xc9
	.long	0x23b
	.long	.LLST6
	.uleb128 0x13
	.long	.Ldebug_ranges0+0
	.uleb128 0x14
	.string	"i"
	.byte	0x1
	.byte	0xcb
	.long	0x42
	.long	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.long	.LASF22
	.byte	0x1
	.byte	0xd3
	.byte	0x1
	.long	0x23b
	.long	.LFB22
	.long	.LFE22
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.long	.LASF23
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.long	.LFB23
	.long	.LFE23
	.long	.LLST8
	.byte	0x1
	.uleb128 0x16
	.long	.LASF24
	.byte	0x1
	.byte	0x1c
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	steps
	.uleb128 0x17
	.long	0x49
	.uleb128 0x16
	.long	.LASF25
	.byte	0x1
	.byte	0x1e
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	timer1_teiler_mult
	.uleb128 0x16
	.long	.LASF26
	.byte	0x1
	.byte	0x1f
	.long	0x42
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	motor_teiler
	.uleb128 0x16
	.long	.LASF27
	.byte	0x1
	.byte	0x20
	.long	0x23b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	uebersetzung
	.uleb128 0x16
	.long	.LASF28
	.byte	0x1
	.byte	0x21
	.long	0x23b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	raddurchmesser
	.uleb128 0x16
	.long	.LASF29
	.byte	0x1
	.byte	0x23
	.long	0x77
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	overflow
	.uleb128 0x16
	.long	.LASF30
	.byte	0x1
	.byte	0x25
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	step_dauer
	.uleb128 0x17
	.long	0x23b
	.uleb128 0x16
	.long	.LASF31
	.byte	0x1
	.byte	0x26
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	step_dauer_help
	.uleb128 0x16
	.long	.LASF32
	.byte	0x1
	.byte	0x27
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl_pro_sekunde
	.uleb128 0x16
	.long	.LASF33
	.byte	0x1
	.byte	0x28
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	geschwindigkeit_help
	.uleb128 0x16
	.long	.LASF34
	.byte	0x1
	.byte	0x29
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	geschwindigkeit
	.uleb128 0x16
	.long	.LASF35
	.byte	0x1
	.byte	0x2a
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl
	.uleb128 0x16
	.long	.LASF36
	.byte	0x1
	.byte	0x2b
	.long	0x350
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl_alt_ermittelt
	.uleb128 0x16
	.long	.LASF37
	.byte	0x1
	.byte	0x2d
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl_mittelung_hilfe
	.uleb128 0x18
	.long	0x350
	.long	0x3e3
	.uleb128 0x19
	.long	0x3e3
	.byte	0x2
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF38
	.uleb128 0x16
	.long	.LASF39
	.byte	0x1
	.byte	0x2e
	.long	0x3fc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl_mittelung
	.uleb128 0x17
	.long	0x3d3
	.uleb128 0x16
	.long	.LASF40
	.byte	0x1
	.byte	0x31
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	geschwindigkeit_ausgabe
	.uleb128 0x16
	.long	.LASF41
	.byte	0x1
	.byte	0x32
	.long	0x2df
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	drehzahl_ausgabe_01
	.uleb128 0x18
	.long	0x77
	.long	0x435
	.uleb128 0x19
	.long	0x3e3
	.byte	0x9
	.byte	0
	.uleb128 0x16
	.long	.LASF42
	.byte	0x1
	.byte	0x34
	.long	0x425
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ausgabe
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF43
	.long	.LASF43
	.byte	0x3
	.byte	0xd9
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF44
	.long	.LASF44
	.byte	0x4
	.byte	0x45
	.uleb128 0x1a
	.byte	0x1
	.byte	0x1
	.long	.LASF45
	.long	.LASF45
	.byte	0x4
	.byte	0x46
	.uleb128 0x1b
	.byte	0x1
	.byte	0x1
	.long	.LASF46
	.long	.LASF46
	.byte	0x5
	.word	0x29f
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2116
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
	.uleb128 0x2116
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x6
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LFB13
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
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST1:
	.long	.LFB14
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI9
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI12
	.long	.LCFI13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI13
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI15
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	0
	.long	0
.LLST2:
	.long	.LFB15
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
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST3:
	.long	.LFB16
	.long	.LCFI25
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI25
	.long	.LCFI26
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI26
	.long	.LCFI27
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI27
	.long	.LCFI28
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI28
	.long	.LCFI29
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI29
	.long	.LCFI30
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI30
	.long	.LCFI31
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI31
	.long	.LCFI32
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	.LCFI32
	.long	.LCFI33
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 10
	.long	.LCFI33
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST4:
	.long	.LFB18
	.long	.LCFI34
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI34
	.long	.LFE18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST5:
	.long	.LFB21
	.long	.LCFI35
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI35
	.long	.LCFI36
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI36
	.long	.LCFI37
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI37
	.long	.LCFI38
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI38
	.long	.LCFI39
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI39
	.long	.LCFI40
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI40
	.long	.LFE21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	0
	.long	0
.LLST6:
	.long	.LVL31
	.long	.LVL32
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0
	.long	.LVL32
	.long	.LVL38
	.word	0xc
	.byte	0x5c
	.byte	0x93
	.uleb128 0x1
	.byte	0x5d
	.byte	0x93
	.uleb128 0x1
	.byte	0x5e
	.byte	0x93
	.uleb128 0x1
	.byte	0x5f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL38
	.long	.LFE21
	.word	0xc
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST7:
	.long	.LVL31
	.long	.LVL32
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL32
	.long	.LVL37
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST8:
	.long	.LFB23
	.long	.LCFI41
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI41
	.long	.LCFI42
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI42
	.long	.LCFI43
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI43
	.long	.LCFI44
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI44
	.long	.LFE23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x7c
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
	.long	.LFB20
	.long	.LFE20-.LFB20
	.long	.LFB21
	.long	.LFE21-.LFB21
	.long	.LFB22
	.long	.LFE22-.LFB22
	.long	.LFB23
	.long	.LFE23-.LFB23
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB2
	.long	.LBE2
	.long	.LBB3
	.long	.LBE3
	.long	0
	.long	0
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
	.long	.LFB20
	.long	.LFE20
	.long	.LFB21
	.long	.LFE21
	.long	.LFB22
	.long	.LFE22
	.long	.LFB23
	.long	.LFE23
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF23:
	.string	"__vector_20"
.LASF31:
	.string	"step_dauer_help"
.LASF49:
	.string	"C:\\\\Users\\\\Armin Baumgartner\\\\Desktop\\\\ansteuerung\\\\ansteuerung\\\\Debug"
.LASF36:
	.string	"drehzahl_alt_ermittelt"
.LASF43:
	.string	"ceil"
.LASF39:
	.string	"drehzahl_mittelung"
.LASF38:
	.string	"sizetype"
.LASF48:
	.string	".././berechnung.c"
.LASF45:
	.string	"LCD_string"
.LASF19:
	.string	"umschalt_null"
.LASF11:
	.string	"geschwindigkeit_auslesen"
.LASF12:
	.string	"drehzahl_berechnung"
.LASF2:
	.string	"uint8_t"
.LASF28:
	.string	"raddurchmesser"
.LASF44:
	.string	"LCD_cmd"
.LASF33:
	.string	"geschwindigkeit_help"
.LASF18:
	.string	"float"
.LASF7:
	.string	"long long int"
.LASF22:
	.string	"drehzahl_alt_holen"
.LASF5:
	.string	"long int"
.LASF10:
	.string	"Init_Timer1"
.LASF34:
	.string	"geschwindigkeit"
.LASF32:
	.string	"drehzahl_pro_sekunde"
.LASF46:
	.string	"sprintf"
.LASF1:
	.string	"unsigned char"
.LASF14:
	.string	"drehzahl_ausgabe"
.LASF25:
	.string	"timer1_teiler_mult"
.LASF0:
	.string	"signed char"
.LASF8:
	.string	"long long unsigned int"
.LASF16:
	.string	"preset_drehzahl_gesch"
.LASF4:
	.string	"unsigned int"
.LASF15:
	.string	"geschwindigkeits_ausgabe"
.LASF3:
	.string	"uint16_t"
.LASF24:
	.string	"steps"
.LASF9:
	.string	"char"
.LASF41:
	.string	"drehzahl_ausgabe_01"
.LASF20:
	.string	"drehzahl_holen"
.LASF29:
	.string	"overflow"
.LASF27:
	.string	"uebersetzung"
.LASF51:
	.string	"gemittelte_drehzahl_holen"
.LASF40:
	.string	"geschwindigkeit_ausgabe"
.LASF35:
	.string	"drehzahl"
.LASF6:
	.string	"long unsigned int"
.LASF37:
	.string	"drehzahl_mittelung_hilfe"
.LASF47:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF42:
	.string	"ausgabe"
.LASF26:
	.string	"motor_teiler"
.LASF13:
	.string	"geschwindigkeit_berechnung"
.LASF21:
	.string	"hilfsvariable"
.LASF50:
	.string	"drehzahl_alt"
.LASF17:
	.string	"drehzahl_save"
.LASF30:
	.string	"step_dauer"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data
.global __do_clear_bss

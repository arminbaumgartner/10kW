	.file	"datenverarbeitung.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.akku_ladestand,"ax",@progbits
.global	akku_ladestand
	.type	akku_ladestand, @function
akku_ladestand:
.LFB11:
	.file 1 ".././datenverarbeitung.c"
	.loc 1 37 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 42 0
	ldi r26,0
	ldi r27,0
	movw r22,r24
	movw r24,r26
	subi r22,64
	sbci r23,-100
	sbc r24,__zero_reg__
	sbc r25,__zero_reg__
	ldi r18,lo8(-96)
	ldi r19,0
	ldi r20,0
	ldi r21,0
	call __divmodsi4
	.loc 1 44 0
	mov r24,r18
.LVL1:
	ldi r25,0
	ret
	.cfi_endproc
.LFE11:
	.size	akku_ladestand, .-akku_ladestand
	.section	.text.akku_daten_einbeziehen,"ax",@progbits
.global	akku_daten_einbeziehen
	.type	akku_daten_einbeziehen, @function
akku_daten_einbeziehen:
.LFB12:
	.loc 1 47 0
	.cfi_startproc
.LVL2:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	ret
	.cfi_endproc
.LFE12:
	.size	akku_daten_einbeziehen, .-akku_daten_einbeziehen
.global	__gesf2
.global	__divsf3
.global	__mulsf3
.global	__subsf3
.global	__addsf3
.global	__lesf2
.global	__eqsf2
.global	__fixunssfsi
.global	__floatsisf
.global	__ltsf2
	.section	.text.geschwindigkeits_regulierung,"ax",@progbits
.global	geschwindigkeits_regulierung
	.type	geschwindigkeits_regulierung, @function
geschwindigkeits_regulierung:
.LFB13:
	.loc 1 56 0
	.cfi_startproc
.LVL3:
	.loc 1 56 0
	push r2
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 2, -2
	push r3
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 3, -3
	push r4
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 4, -4
	push r5
.LCFI3:
	.cfi_def_cfa_offset 6
	.cfi_offset 5, -5
	push r6
.LCFI4:
	.cfi_def_cfa_offset 7
	.cfi_offset 6, -6
	push r7
.LCFI5:
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -7
	push r8
.LCFI6:
	.cfi_def_cfa_offset 9
	.cfi_offset 8, -8
	push r9
.LCFI7:
	.cfi_def_cfa_offset 10
	.cfi_offset 9, -9
	push r10
.LCFI8:
	.cfi_def_cfa_offset 11
	.cfi_offset 10, -10
	push r11
.LCFI9:
	.cfi_def_cfa_offset 12
	.cfi_offset 11, -11
	push r12
.LCFI10:
	.cfi_def_cfa_offset 13
	.cfi_offset 12, -12
	push r13
.LCFI11:
	.cfi_def_cfa_offset 14
	.cfi_offset 13, -13
	push r14
.LCFI12:
	.cfi_def_cfa_offset 15
	.cfi_offset 14, -14
	push r15
.LCFI13:
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -15
	push r16
.LCFI14:
	.cfi_def_cfa_offset 17
	.cfi_offset 16, -16
	push r17
.LCFI15:
	.cfi_def_cfa_offset 18
	.cfi_offset 17, -17
	push r28
.LCFI16:
	.cfi_def_cfa_offset 19
	.cfi_offset 28, -18
	push r29
.LCFI17:
	.cfi_def_cfa_offset 20
	.cfi_offset 29, -19
/* prologue: function */
/* frame size = 0 */
/* stack size = 18 */
.L__stack_usage = 18
	mov r3,r24
	.loc 1 69 0
	call drehzahl_holen
.LVL4:
	movw r12,r22
	movw r14,r24
.LVL5:
	.loc 1 76 0
	ldi r18,0
	ldi r19,lo8(64)
	ldi r20,lo8(-100)
	ldi r21,lo8(69)
	call __gesf2
.LVL6:
	tst r24
	brlt .+2
	rjmp .L4
	.loc 1 100 0
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-44)
	ldi r21,lo8(66)
	movw r24,r14
	movw r22,r12
	call __divsf3
.LVL7:
	movw r8,r22
	movw r10,r24
.LVL8:
	.loc 1 103 0
	call ges_spannung_uebertragung
.LVL9:
	movw r16,r24
.LVL10:
	.loc 1 104 0
	call niedrigste_akku_voltage_uebertragung
.LVL11:
	movw r28,r24
.LVL12:
	.loc 1 105 0
	call temperatur_uebertragung
.LVL13:
	mov r2,r24
.LVL14:
	.loc 1 108 0
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(66)
	movw r24,r10
	movw r22,r8
	call __gesf2
.LVL15:
	tst r24
	brlt .L5
.LVL16:
.L22:
	.loc 1 108 0 is_stmt 0 discriminator 1
	cpi r16,-31
	sbci r17,-85
	brsh .L5
	.loc 1 110 0 is_stmt 1
	mov __tmp_reg__,r31
	mov r8,__zero_reg__
	mov r9,__zero_reg__
	ldi r31,lo8(32)
	mov r10,r31
	ldi r31,lo8(66)
	mov r11,r31
	mov r31,__tmp_reg__
.LVL17:
.L5:
	.loc 1 130 0
	lds r22,drehzahl
	lds r23,drehzahl+1
	lds r24,drehzahl+2
	lds r25,drehzahl+3
	ldi r18,lo8(-68)
	ldi r19,lo8(116)
	ldi r20,lo8(-109)
	ldi r21,lo8(59)
	call __mulsf3
.LVL18:
	movw r18,r22
	movw r20,r24
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(-128)
	ldi r25,lo8(65)
	call __subsf3
.LVL19:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(112)
	ldi r21,lo8(65)
	call __addsf3
.LVL20:
	movw r4,r22
	movw r6,r24
.LVL21:
	.loc 1 132 0
	ldi r18,0
	ldi r19,0
	movw r20,r18
	call __lesf2
.LVL22:
	cp __zero_reg__,r24
	brlt .L7
	.loc 1 134 0
	mov r4,__zero_reg__
	mov r5,__zero_reg__
	movw r6,r4
.LVL23:
.L7:
	.loc 1 151 0
	cpi r28,-14
	ldi r24,10
	cpc r29,r24
	brsh .L9
	.loc 1 153 0
	ldi r18,lo8(-102)
	ldi r19,lo8(-103)
	ldi r20,lo8(25)
	ldi r21,lo8(63)
	movw r24,r6
	movw r22,r4
	call __mulsf3
.LVL24:
	movw r4,r22
	movw r6,r24
.LVL25:
	rjmp .L10
.L9:
	.loc 1 155 0
	cpi r28,85
	ldi r24,11
	cpc r29,r24
	brsh .L11
	.loc 1 157 0
	ldi r18,lo8(102)
	ldi r19,lo8(102)
	ldi r20,lo8(38)
	ldi r21,lo8(63)
	movw r24,r6
	movw r22,r4
	call __mulsf3
.LVL26:
	movw r4,r22
	movw r6,r24
.LVL27:
	rjmp .L10
.L11:
	.loc 1 159 0
	cpi r28,-71
	sbci r29,11
	brsh .L10
	.loc 1 161 0
	ldi r18,lo8(51)
	ldi r19,lo8(51)
	ldi r20,lo8(51)
	ldi r21,lo8(63)
	movw r24,r6
	movw r22,r4
	call __mulsf3
.LVL28:
	movw r4,r22
	movw r6,r24
.LVL29:
.L10:
	.loc 1 166 0
	ldi r24,lo8(54)
	cp r24,r2
	brsh .L12
	.loc 1 168 0
	ldi r18,lo8(-51)
	ldi r19,lo8(-52)
	ldi r20,lo8(76)
	ldi r21,lo8(62)
	movw r24,r6
	movw r22,r4
	call __mulsf3
.LVL30:
	movw r4,r22
	movw r6,r24
.LVL31:
.L12:
	.loc 1 174 0
	ldi r18,0
	ldi r19,0
	movw r20,r18
	movw r24,r14
	movw r22,r12
	call __eqsf2
.LVL32:
	cpse r24,__zero_reg__
	rjmp .L13
	.loc 1 174 0 is_stmt 0 discriminator 1
	ldi r24,lo8(20)
	cp r24,r3
	brsh .+2
	rjmp .L23
.L13:
	.loc 1 115 0 is_stmt 1
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(-96)
	ldi r21,lo8(64)
	movw r24,r10
	movw r22,r8
	call __mulsf3
.LVL33:
	call __fixunssfsi
.LVL34:
	mov r28,r22
.LVL35:
	.loc 1 180 0
	ldi r23,0
	ldi r24,0
	ldi r25,0
	call __floatsisf
.LVL36:
	movw r12,r22
	movw r14,r24
.LVL37:
	movw r20,r6
	movw r18,r4
	ldi r22,0
	ldi r23,0
	ldi r24,lo8(127)
	ldi r25,lo8(67)
	call __subsf3
.LVL38:
	movw r8,r22
	movw r10,r24
.LVL39:
	movw r18,r22
	movw r20,r24
	movw r24,r14
	movw r22,r12
	call __gesf2
.LVL40:
	tst r24
	brlt .L29
	.loc 1 182 0
	movw r24,r10
	movw r22,r8
	call __fixunssfsi
.LVL41:
	mov r28,r22
.LVL42:
	rjmp .L18
.LVL43:
.L29:
	.loc 1 184 0
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	movw r24,r14
	movw r22,r12
	call __lesf2
.LVL44:
	cp __zero_reg__,r24
	brlt .L18
	.loc 1 186 0
	ldi r28,lo8(10)
.L18:
.LVL45:
	.loc 1 190 0
	mov r14,r3
	mov r15,__zero_reg__
	mov r16,r28
.LVL46:
	ldi r17,0
	movw r24,r6
	movw r22,r4
	call __fixunssfsi
.LVL47:
	movw r24,r16
	add r24,r22
	adc r25,__zero_reg__
	cp r24,r14
	cpc r25,r15
	brge .L20
	.loc 1 193 0
	mov r3,r28
.LVL48:
	add r3,r22
.LVL49:
	rjmp .L30
.LVL50:
.L20:
	.loc 1 197 0
	movw r22,r16
	lsl r17
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
.LVL51:
	ldi r18,0
	ldi r19,0
	ldi r20,lo8(32)
	ldi r21,lo8(65)
	call __subsf3
.LVL52:
	movw r8,r22
	movw r10,r24
	movw r22,r14
	lsl r15
	sbc r24,r24
	sbc r25,r25
	call __floatsisf
.LVL53:
	movw r20,r10
	movw r18,r8
	call __ltsf2
.LVL54:
	tst r24
	brge .L30
	.loc 1 200 0
	movw r24,r10
	movw r22,r8
	call __fixunssfsi
.LVL55:
	mov r3,r22
.LVL56:
	rjmp .L30
.LVL57:
.L23:
	.loc 1 176 0
	set
	clr r3
	bld r3,4
.LVL58:
	.loc 1 215 0
	rjmp .L30
.LVL59:
.L4:
	.loc 1 103 0
	call ges_spannung_uebertragung
.LVL60:
	movw r16,r24
.LVL61:
	.loc 1 104 0
	call niedrigste_akku_voltage_uebertragung
.LVL62:
	movw r28,r24
.LVL63:
	.loc 1 105 0
	call temperatur_uebertragung
.LVL64:
	mov r2,r24
.LVL65:
	.loc 1 100 0
	mov __tmp_reg__,r31
	ldi r31,lo8(-29)
	mov r8,r31
	ldi r31,lo8(-83)
	mov r9,r31
	ldi r31,lo8(60)
	mov r10,r31
	ldi r31,lo8(66)
	mov r11,r31
	mov r31,__tmp_reg__
	.loc 1 78 0
	mov __tmp_reg__,r31
	mov r12,__zero_reg__
	ldi r31,lo8(64)
	mov r13,r31
	ldi r31,lo8(-100)
	mov r14,r31
	ldi r31,lo8(69)
	mov r15,r31
	mov r31,__tmp_reg__
	rjmp .L22
.LVL66:
.L30:
	.loc 1 217 0
	mov r24,r3
/* epilogue start */
	pop r29
	pop r28
	pop r17
	pop r16
	pop r15
	pop r14
	pop r13
	pop r12
	pop r11
	pop r10
	pop r9
	pop r8
	pop r7
	pop r6
	pop r5
	pop r4
.LVL67:
	pop r3
	pop r2
.LVL68:
	ret
	.cfi_endproc
.LFE13:
	.size	geschwindigkeits_regulierung, .-geschwindigkeits_regulierung
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d"
	.section	.text.ladestand_ausgabe,"ax",@progbits
.global	ladestand_ausgabe
	.type	ladestand_ausgabe, @function
ladestand_ausgabe:
.LFB14:
	.loc 1 220 0
	.cfi_startproc
.LVL69:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 221 0
	push __zero_reg__
.LCFI18:
	.cfi_def_cfa_offset 3
	push r24
.LCFI19:
	.cfi_def_cfa_offset 4
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
.LVL70:
	push r25
.LCFI20:
	.cfi_def_cfa_offset 5
.LVL71:
	push r24
.LCFI21:
	.cfi_def_cfa_offset 6
	ldi r24,lo8(ausgabe_02)
	ldi r25,hi8(ausgabe_02)
	push r25
.LCFI22:
	.cfi_def_cfa_offset 7
	push r24
.LCFI23:
	.cfi_def_cfa_offset 8
	call sprintf
.LVL72:
	.loc 1 222 0
	ldi r24,lo8(-64)
	call LCD_cmd
.LVL73:
	.loc 1 223 0
	ldi r24,lo8(ausgabe_02)
	ldi r25,hi8(ausgabe_02)
	call LCD_string
.LVL74:
	.loc 1 224 0
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
	pop __tmp_reg__
.LCFI24:
	.cfi_def_cfa_offset 2
	ret
	.cfi_endproc
.LFE14:
	.size	ladestand_ausgabe, .-ladestand_ausgabe
	.comm	ausgabe_02,5,1
.global	maxspannung
	.section	.data.maxspannung,"aw",@progbits
	.type	maxspannung, @object
	.size	maxspannung, 2
maxspannung:
	.word	-9536
.global	nennspannung
	.section	.data.nennspannung,"aw",@progbits
	.type	nennspannung, @object
	.size	nennspannung, 2
nennspannung:
	.word	-17536
	.text
.Letext0:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.file 3 ".././berechnung.h"
	.file 4 ".././kommunikation.h"
	.file 5 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdio.h"
	.file 6 ".././lcd.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x311
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF42
	.byte	0xc
	.long	.LASF43
	.long	.LASF44
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF2
	.uleb128 0x3
	.long	.LASF3
	.byte	0x2
	.byte	0x7e
	.long	0x30
	.uleb128 0x4
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x2
	.byte	0x80
	.long	0x5b
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x5
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.long	0x49
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xc2
	.uleb128 0x6
	.long	.LASF11
	.byte	0x1
	.byte	0x24
	.long	0x50
	.long	.LLST0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.byte	0x26
	.long	0x3e
	.long	.LLST1
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xf7
	.uleb128 0x9
	.long	.LASF12
	.byte	0x1
	.byte	0x2e
	.long	0x3e
	.byte	0x1
	.byte	0x68
	.uleb128 0x9
	.long	.LASF13
	.byte	0x1
	.byte	0x2e
	.long	0x3e
	.byte	0x1
	.byte	0x66
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.long	0x7e
	.long	.LFB13
	.long	.LFE13
	.long	.LLST2
	.byte	0x1
	.long	0x1fa
	.uleb128 0x6
	.long	.LASF16
	.byte	0x1
	.byte	0x37
	.long	0x7e
	.long	.LLST3
	.uleb128 0x7
	.long	.LASF17
	.byte	0x1
	.byte	0x3a
	.long	0x7e
	.long	.LLST4
	.uleb128 0x7
	.long	.LASF18
	.byte	0x1
	.byte	0x3b
	.long	0x7e
	.long	.LLST5
	.uleb128 0x7
	.long	.LASF19
	.byte	0x1
	.byte	0x3d
	.long	0x29
	.long	.LLST6
	.uleb128 0x7
	.long	.LASF20
	.byte	0x1
	.byte	0x3e
	.long	0x29
	.long	.LLST7
	.uleb128 0x7
	.long	.LASF21
	.byte	0x1
	.byte	0x40
	.long	0x29
	.long	.LLST8
	.uleb128 0x7
	.long	.LASF22
	.byte	0x1
	.byte	0x41
	.long	0x29
	.long	.LLST9
	.uleb128 0x7
	.long	.LASF23
	.byte	0x1
	.byte	0x45
	.long	0x29
	.long	.LLST10
	.uleb128 0x7
	.long	.LASF24
	.byte	0x1
	.byte	0x47
	.long	0x50
	.long	.LLST11
	.uleb128 0x7
	.long	.LASF25
	.byte	0x1
	.byte	0x48
	.long	0x50
	.long	.LLST12
	.uleb128 0x7
	.long	.LASF26
	.byte	0x1
	.byte	0x49
	.long	0x3e
	.long	.LLST13
	.uleb128 0xb
	.long	.LVL4
	.long	0x2b8
	.uleb128 0xb
	.long	.LVL9
	.long	0x2c5
	.uleb128 0xb
	.long	.LVL11
	.long	0x2d2
	.uleb128 0xb
	.long	.LVL13
	.long	0x2df
	.uleb128 0xb
	.long	.LVL60
	.long	0x2c5
	.uleb128 0xb
	.long	.LVL62
	.long	0x2d2
	.uleb128 0xb
	.long	.LVL64
	.long	0x2df
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.long	.LASF28
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST14
	.byte	0x1
	.long	0x259
	.uleb128 0x6
	.long	.LASF29
	.byte	0x1
	.byte	0xdb
	.long	0x3e
	.long	.LLST15
	.uleb128 0xb
	.long	.LVL72
	.long	0x2ec
	.uleb128 0xd
	.long	.LVL73
	.long	0x2fa
	.long	0x240
	.uleb128 0xe
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.byte	0
	.uleb128 0xf
	.long	.LVL74
	.long	0x307
	.uleb128 0xe
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	ausgabe_02
	.byte	0
	.byte	0
	.uleb128 0x10
	.long	.LASF30
	.byte	0x1
	.byte	0x1b
	.long	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	0x29
	.uleb128 0x12
	.long	.LASF31
	.byte	0x1
	.byte	0x1d
	.long	0x50
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	nennspannung
	.uleb128 0x12
	.long	.LASF32
	.byte	0x1
	.byte	0x1e
	.long	0x50
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	maxspannung
	.uleb128 0x13
	.long	0x7e
	.long	0x29f
	.uleb128 0x14
	.long	0x29f
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF33
	.uleb128 0x12
	.long	.LASF34
	.byte	0x1
	.byte	0x20
	.long	0x28f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	ausgabe_02
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF35
	.long	.LASF35
	.byte	0x3
	.byte	0x11
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF36
	.long	.LASF36
	.byte	0x4
	.byte	0x19
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF37
	.long	.LASF37
	.byte	0x4
	.byte	0x1a
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF38
	.long	.LASF38
	.byte	0x4
	.byte	0x1b
	.uleb128 0x16
	.byte	0x1
	.byte	0x1
	.long	.LASF39
	.long	.LASF39
	.byte	0x5
	.word	0x29f
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF40
	.long	.LASF40
	.byte	0x6
	.byte	0x45
	.uleb128 0x15
	.byte	0x1
	.byte	0x1
	.long	.LASF41
	.long	.LASF41
	.byte	0x6
	.byte	0x46
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.long	.LVL0
	.long	.LVL1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL1
	.long	.LFE11
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0xe
	.byte	0x88
	.sleb128 0
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0xa
	.word	0x9c40
	.byte	0x1c
	.byte	0x8
	.byte	0xa0
	.byte	0x1b
	.byte	0x9f
	.long	.LVL1
	.long	.LFE11
	.word	0xf
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0xa
	.word	0xffff
	.byte	0x1a
	.byte	0xa
	.word	0x9c40
	.byte	0x1c
	.byte	0x8
	.byte	0xa0
	.byte	0x1b
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
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
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 16
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 17
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 18
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 19
	.long	.LCFI17
	.long	.LFE13
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 20
	.long	0
	.long	0
.LLST3:
	.long	.LVL3
	.long	.LVL4-1
	.word	0x1
	.byte	0x68
	.long	.LVL4-1
	.long	.LVL48
	.word	0x1
	.byte	0x53
	.long	.LVL48
	.long	.LVL50
	.word	0x1
	.byte	0x5e
	.long	.LVL50
	.long	.LVL56
	.word	0x1
	.byte	0x53
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x5e
	.long	.LVL57
	.long	.LVL58
	.word	0x1
	.byte	0x53
	.long	.LVL58
	.long	.LVL59
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL59
	.long	.LVL66
	.word	0x1
	.byte	0x53
	.long	.LVL66
	.long	.LFE13
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL17
	.long	.LVL39
	.word	0x10
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40a00000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	.LVL42
	.long	.LVL43
	.word	0x1
	.byte	0x66
	.long	.LVL45
	.long	.LVL57
	.word	0x1
	.byte	0x6c
	.long	.LVL57
	.long	.LVL59
	.word	0x10
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40a00000
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x30
	.byte	0xf7
	.uleb128 0
	.byte	0x9f
	.long	0
	.long	0
.LLST5:
	.long	.LVL49
	.long	.LVL50
	.word	0x1
	.byte	0x53
	.long	.LVL56
	.long	.LVL57
	.word	0x1
	.byte	0x53
	.long	.LVL58
	.long	.LVL59
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
.LLST6:
	.long	.LVL17
	.long	.LVL39
	.word	0xc
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40a00000
	.byte	0x1e
	.byte	0x9f
	.long	.LVL57
	.long	.LVL59
	.word	0xc
	.byte	0xf5
	.uleb128 0x8
	.uleb128 0x29
	.byte	0xf4
	.uleb128 0x29
	.byte	0x4
	.long	0x40a00000
	.byte	0x1e
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL39
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL59
	.word	0xc
	.byte	0x58
	.byte	0x93
	.uleb128 0x1
	.byte	0x59
	.byte	0x93
	.uleb128 0x1
	.byte	0x5a
	.byte	0x93
	.uleb128 0x1
	.byte	0x5b
	.byte	0x93
	.uleb128 0x1
	.long	.LVL59
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x423cade3
	.long	0
	.long	0
.LLST8:
	.long	.LVL21
	.long	.LVL59
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	.LVL66
	.long	.LVL67
	.word	0xc
	.byte	0x54
	.byte	0x93
	.uleb128 0x1
	.byte	0x55
	.byte	0x93
	.uleb128 0x1
	.byte	0x56
	.byte	0x93
	.uleb128 0x1
	.byte	0x57
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST9:
	.long	.LVL23
	.long	.LVL59
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	.LVL66
	.long	.LFE13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST10:
	.long	.LVL5
	.long	.LVL37
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
	.long	.LVL57
	.long	.LVL59
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
	.long	.LVL59
	.long	.LVL66
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x459c4000
	.long	0
	.long	0
.LLST11:
	.long	.LVL10
	.long	.LVL46
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL59
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL61
	.long	.LVL66
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST12:
	.long	.LVL12
	.long	.LVL13-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL13-1
	.long	.LVL35
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL57
	.long	.LVL59
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL63
	.long	.LVL64-1
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL64-1
	.long	.LVL66
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST13:
	.long	.LVL14
	.long	.LVL59
	.word	0x1
	.byte	0x52
	.long	.LVL65
	.long	.LVL68
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
.LLST14:
	.long	.LFB14
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI20
	.long	.LCFI21
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI21
	.long	.LCFI22
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI22
	.long	.LCFI23
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI23
	.long	.LCFI24
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI24
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	0
	.long	0
.LLST15:
	.long	.LVL69
	.long	.LVL70
	.word	0x1
	.byte	0x68
	.long	.LVL70
	.long	.LVL71
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 1
	.long	.LVL71
	.long	.LVL72-1
	.word	0x2
	.byte	0x91
	.sleb128 -1
	.long	.LVL72-1
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x34
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
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF22:
	.string	"angleich_gerade_bremsen"
.LASF43:
	.string	".././datenverarbeitung.c"
.LASF44:
	.string	"C:\\\\Users\\\\Armin Baumgartner\\\\Desktop\\\\ansteuerung\\\\ansteuerung\\\\Debug"
.LASF13:
	.string	"temp"
.LASF33:
	.string	"sizetype"
.LASF41:
	.string	"LCD_string"
.LASF19:
	.string	"kennlinie_wert_float"
.LASF17:
	.string	"kennlinie_wert"
.LASF3:
	.string	"uint8_t"
.LASF26:
	.string	"temperatur_regelung"
.LASF0:
	.string	"float"
.LASF12:
	.string	"ladestand"
.LASF8:
	.string	"long long int"
.LASF38:
	.string	"temperatur_uebertragung"
.LASF6:
	.string	"long int"
.LASF24:
	.string	"ges_spannung_regelung"
.LASF36:
	.string	"ges_spannung_uebertragung"
.LASF23:
	.string	"drehzahl_regelung"
.LASF16:
	.string	"adc_wert"
.LASF39:
	.string	"sprintf"
.LASF1:
	.string	"unsigned char"
.LASF2:
	.string	"signed char"
.LASF29:
	.string	"ladestand_ubernahme"
.LASF9:
	.string	"long long unsigned int"
.LASF25:
	.string	"niedrigste_zell_spannung_regelung"
.LASF5:
	.string	"unsigned int"
.LASF4:
	.string	"uint16_t"
.LASF37:
	.string	"niedrigste_akku_voltage_uebertragung"
.LASF20:
	.string	"kennlinie_voltage"
.LASF21:
	.string	"angleich_gerade_gas"
.LASF11:
	.string	"spannung"
.LASF10:
	.string	"char"
.LASF35:
	.string	"drehzahl_holen"
.LASF34:
	.string	"ausgabe_02"
.LASF14:
	.string	"akku_ladestand"
.LASF30:
	.string	"drehzahl"
.LASF7:
	.string	"long unsigned int"
.LASF28:
	.string	"ladestand_ausgabe"
.LASF18:
	.string	"regulierter_wert"
.LASF15:
	.string	"geschwindigkeits_regulierung"
.LASF40:
	.string	"LCD_cmd"
.LASF42:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF32:
	.string	"maxspannung"
.LASF31:
	.string	"nennspannung"
.LASF27:
	.string	"akku_daten_einbeziehen"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data
.global __do_clear_bss

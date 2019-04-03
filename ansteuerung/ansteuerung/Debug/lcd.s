	.file	"lcd.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.delay_ms,"ax",@progbits
.global	delay_ms
	.type	delay_ms, @function
delay_ms:
.LFB11:
	.file 1 ".././lcd.c"
	.loc 1 30 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LBB33:
	.loc 1 31 0
	sbiw r24,0
	breq .L1
	ldi r18,0
	ldi r19,0
.LVL1:
.L3:
.LBB34:
.LBB35:
	.file 2 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\util\\delay.h"
	.loc 2 187 0
	ldi r30,lo8(3999)
	ldi r31,hi8(3999)
1:	sbiw r30,1
	brne 1b
	rjmp .
	nop
.LVL2:
.LBE35:
.LBE34:
	.loc 1 31 0
	subi r18,-1
	sbci r19,-1
.LVL3:
	cp r24,r18
	cpc r25,r19
	brne .L3
.LVL4:
.L1:
	ret
.LBE33:
	.cfi_endproc
.LFE11:
	.size	delay_ms, .-delay_ms
	.section	.text.Enable,"ax",@progbits
.global	Enable
	.type	Enable, @function
Enable:
.LFB12:
	.loc 1 39 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 40 0
	sbi 0x11,1
	.loc 1 41 0
	cbi 0x11,1
	ret
	.cfi_endproc
.LFE12:
	.size	Enable, .-Enable
	.section	.text.LCD_init,"ax",@progbits
.global	LCD_init
	.type	LCD_init, @function
LCD_init:
.LFB13:
	.loc 1 49 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 54 0
	ldi r24,lo8(50)
	ldi r25,0
	call delay_ms
.LVL5:
	.loc 1 55 0
	cbi 0x11,1
	.loc 1 56 0
	cbi 0x5,0
	.loc 1 61 0
	in r24,0x11
	.loc 1 61 0
	andi r24,lo8(63)
	out 0x11,r24
	.loc 1 62 0
	in r24,0x11
	.loc 1 62 0
	ori r24,lo8(48)
	out 0x11,r24
	.loc 1 63 0
	call Enable
.LVL6:
.LBB36:
.LBB37:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL7:
.LBE37:
.LBE36:
	.loc 1 67 0
	in r24,0x11
	.loc 1 67 0
	andi r24,lo8(63)
	out 0x11,r24
	.loc 1 68 0
	in r24,0x11
	.loc 1 68 0
	ori r24,lo8(48)
	out 0x11,r24
	.loc 1 69 0
	call Enable
.LVL8:
.LBB38:
.LBB39:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL9:
.LBE39:
.LBE38:
	.loc 1 73 0
	in r24,0x11
	.loc 1 73 0
	andi r24,lo8(63)
	out 0x11,r24
	.loc 1 74 0
	in r24,0x11
	.loc 1 74 0
	ori r24,lo8(48)
	out 0x11,r24
	.loc 1 75 0
	call Enable
.LVL10:
.LBB40:
.LBB41:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL11:
.LBE41:
.LBE40:
	.loc 1 79 0
	in r24,0x11
	.loc 1 79 0
	andi r24,lo8(47)
	out 0x11,r24
	.loc 1 80 0
	sbi 0x11,5
	.loc 1 81 0
	call Enable
.LVL12:
.LBB42:
.LBB43:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL13:
.LBE43:
.LBE42:
	.loc 1 87 0
	in r24,0x11
	.loc 1 87 0
	andi r24,lo8(47)
	out 0x11,r24
	.loc 1 88 0
	sbi 0x11,5
	.loc 1 89 0
	call Enable
.LVL14:
.LBB44:
.LBB45:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL15:
.LBE45:
.LBE44:
	.loc 1 93 0
	sbi 0x11,7
	.loc 1 94 0
	in r24,0x11
	.loc 1 94 0
	andi r24,lo8(-113)
	out 0x11,r24
	.loc 1 95 0
	call Enable
.LVL16:
.LBB46:
.LBB47:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL17:
.LBE47:
.LBE46:
	.loc 1 100 0
	in r24,0x11
	.loc 1 100 0
	andi r24,lo8(15)
	out 0x11,r24
	.loc 1 101 0
	call Enable
.LVL18:
.LBB48:
.LBB49:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL19:
.LBE49:
.LBE48:
	.loc 1 105 0
	sbi 0x11,7
	.loc 1 106 0
	in r24,0x11
	.loc 1 106 0
	andi r24,lo8(-113)
	out 0x11,r24
	.loc 1 107 0
	call Enable
.LVL20:
.LBB50:
.LBB51:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL21:
.LBE51:
.LBE50:
	.loc 1 112 0
	in r24,0x11
	.loc 1 112 0
	andi r24,lo8(15)
	out 0x11,r24
	.loc 1 113 0
	call Enable
.LVL22:
.LBB52:
.LBB53:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL23:
.LBE53:
.LBE52:
	.loc 1 117 0
	in r24,0x11
	.loc 1 117 0
	andi r24,lo8(31)
	out 0x11,r24
	.loc 1 118 0
	sbi 0x11,4
	.loc 1 119 0
	call Enable
.LVL24:
.LBB54:
.LBB55:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL25:
.LBE55:
.LBE54:
	.loc 1 124 0
	in r24,0x11
	.loc 1 124 0
	andi r24,lo8(15)
	out 0x11,r24
	.loc 1 125 0
	call Enable
.LVL26:
.LBB56:
.LBB57:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL27:
.LBE57:
.LBE56:
	.loc 1 129 0
	in r24,0x11
	.loc 1 129 0
	andi r24,lo8(63)
	out 0x11,r24
	.loc 1 130 0
	in r24,0x11
	.loc 1 130 0
	ori r24,lo8(48)
	out 0x11,r24
	.loc 1 131 0
	call Enable
.LVL28:
.LBB58:
.LBB59:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL29:
.LBE59:
.LBE58:
	.loc 1 136 0
	in r24,0x11
	.loc 1 136 0
	andi r24,lo8(15)
	out 0x11,r24
	.loc 1 137 0
	call Enable
.LVL30:
.LBB60:
.LBB61:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL31:
.LBE61:
.LBE60:
	.loc 1 141 0
	in r24,0x11
	.loc 1 141 0
	ori r24,lo8(-16)
	out 0x11,r24
	.loc 1 142 0
	call Enable
.LVL32:
.LBB62:
.LBB63:
	.loc 2 187 0
	ldi r24,lo8(-25537)
	ldi r25,hi8(-25537)
1:	sbiw r24,1
	brne 1b
	rjmp .
	nop
.LVL33:
	ret
.LBE63:
.LBE62:
	.cfi_endproc
.LFE13:
	.size	LCD_init, .-LCD_init
	.section	.text.LCD_send,"ax",@progbits
.global	LCD_send
	.type	LCD_send, @function
LCD_send:
.LFB14:
	.loc 1 154 0
	.cfi_startproc
.LVL34:
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.LVL35:
	.loc 1 157 0
	sbi 0x5,0
	.loc 1 160 0
	tst r24
	brge .L8
	.loc 1 160 0 discriminator 1
	sbi 0x11,7
	rjmp .L9
.L8:
	.loc 1 161 0
	cbi 0x11,7
.L9:
	.loc 1 163 0
	sbrs r28,6
	rjmp .L10
	.loc 1 163 0 discriminator 1
	sbi 0x11,6
	rjmp .L11
.L10:
	.loc 1 164 0
	cbi 0x11,6
.L11:
	.loc 1 166 0
	sbrs r28,5
	rjmp .L12
	.loc 1 166 0 discriminator 1
	sbi 0x11,5
	rjmp .L13
.L12:
	.loc 1 167 0
	cbi 0x11,5
.L13:
	.loc 1 169 0
	sbrs r28,4
	rjmp .L14
	.loc 1 169 0 discriminator 1
	sbi 0x11,4
	rjmp .L15
.L14:
	.loc 1 170 0
	cbi 0x11,4
.L15:
	.loc 1 172 0
	call Enable
.LVL36:
	.loc 1 173 0
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL37:
	.loc 1 176 0
	sbrs r28,3
	rjmp .L16
	.loc 1 176 0 discriminator 1
	sbi 0x11,7
	rjmp .L17
.L16:
	.loc 1 177 0
	cbi 0x11,7
.L17:
	.loc 1 179 0
	sbrs r28,2
	rjmp .L18
	.loc 1 179 0 discriminator 1
	sbi 0x11,6
	rjmp .L19
.L18:
	.loc 1 180 0
	cbi 0x11,6
.L19:
	.loc 1 182 0
	sbrs r28,1
	rjmp .L20
	.loc 1 182 0 discriminator 1
	sbi 0x11,5
	rjmp .L21
.L20:
	.loc 1 183 0
	cbi 0x11,5
.L21:
	.loc 1 185 0
	sbrs r28,0
	rjmp .L22
	.loc 1 185 0 discriminator 1
	sbi 0x11,4
	rjmp .L23
.L22:
	.loc 1 186 0
	cbi 0x11,4
.L23:
	.loc 1 188 0
	call Enable
.LVL38:
	.loc 1 189 0
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL39:
/* epilogue start */
	.loc 1 191 0
	pop r28
.LVL40:
	ret
	.cfi_endproc
.LFE14:
	.size	LCD_send, .-LCD_send
	.section	.text.LCD_cmd,"ax",@progbits
.global	LCD_cmd
	.type	LCD_cmd, @function
LCD_cmd:
.LFB15:
	.loc 1 200 0
	.cfi_startproc
.LVL41:
	push r28
.LCFI1:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
	mov r28,r24
.LVL42:
	.loc 1 203 0
	cbi 0x5,0
	.loc 1 206 0
	tst r24
	brge .L25
	.loc 1 206 0 discriminator 1
	sbi 0x11,7
	rjmp .L26
.L25:
	.loc 1 207 0
	cbi 0x11,7
.L26:
	.loc 1 209 0
	sbrs r28,6
	rjmp .L27
	.loc 1 209 0 discriminator 1
	sbi 0x11,6
	rjmp .L28
.L27:
	.loc 1 210 0
	cbi 0x11,6
.L28:
	.loc 1 212 0
	sbrs r28,5
	rjmp .L29
	.loc 1 212 0 discriminator 1
	sbi 0x11,5
	rjmp .L30
.L29:
	.loc 1 213 0
	cbi 0x11,5
.L30:
	.loc 1 215 0
	sbrs r28,4
	rjmp .L31
	.loc 1 215 0 discriminator 1
	sbi 0x11,4
	rjmp .L32
.L31:
	.loc 1 216 0
	cbi 0x11,4
.L32:
	.loc 1 218 0
	call Enable
.LVL43:
	.loc 1 219 0
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL44:
	.loc 1 222 0
	sbrs r28,3
	rjmp .L33
	.loc 1 222 0 discriminator 1
	sbi 0x11,7
	rjmp .L34
.L33:
	.loc 1 223 0
	cbi 0x11,7
.L34:
	.loc 1 225 0
	sbrs r28,2
	rjmp .L35
	.loc 1 225 0 discriminator 1
	sbi 0x11,6
	rjmp .L36
.L35:
	.loc 1 226 0
	cbi 0x11,6
.L36:
	.loc 1 228 0
	sbrs r28,1
	rjmp .L37
	.loc 1 228 0 discriminator 1
	sbi 0x11,5
	rjmp .L38
.L37:
	.loc 1 229 0
	cbi 0x11,5
.L38:
	.loc 1 231 0
	sbrs r28,0
	rjmp .L39
	.loc 1 231 0 discriminator 1
	sbi 0x11,4
	rjmp .L40
.L39:
	.loc 1 232 0
	cbi 0x11,4
.L40:
	.loc 1 234 0
	call Enable
.LVL45:
	.loc 1 235 0
	ldi r24,lo8(1)
	ldi r25,0
	call delay_ms
.LVL46:
/* epilogue start */
	.loc 1 237 0
	pop r28
.LVL47:
	ret
	.cfi_endproc
.LFE15:
	.size	LCD_cmd, .-LCD_cmd
	.section	.text.LCD_string,"ax",@progbits
.global	LCD_string
	.type	LCD_string, @function
LCD_string:
.LFB16:
	.loc 1 246 0
	.cfi_startproc
.LVL48:
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI3:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r28,r24
	.loc 1 247 0
	ld r24,Y
.LVL49:
	tst r24
	breq .L41
	adiw r28,1
.LVL50:
.L43:
	.loc 1 249 0
	call LCD_send
.LVL51:
	.loc 1 247 0
	ld r24,Y+
.LVL52:
	cpse r24,__zero_reg__
	rjmp .L43
.LVL53:
.L41:
/* epilogue start */
	.loc 1 251 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE16:
	.size	LCD_string, .-LCD_string
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Akku:"
.LC1:
	.string	"%"
.LC2:
	.string	"U/m"
.LC3:
	.string	"km/h"
	.section	.text.LCD_Display,"ax",@progbits
.global	LCD_Display
	.type	LCD_Display, @function
LCD_Display:
.LFB17:
	.loc 1 254 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 255 0
	ldi r24,lo8(-128)
	call LCD_cmd
.LVL54:
	.loc 1 256 0
	ldi r24,lo8(.LC0)
	ldi r25,hi8(.LC0)
	call LCD_string
.LVL55:
	.loc 1 258 0
	ldi r24,lo8(-61)
	call LCD_cmd
.LVL56:
	.loc 1 259 0
	ldi r24,lo8(.LC1)
	ldi r25,hi8(.LC1)
	call LCD_string
.LVL57:
	.loc 1 266 0
	ldi r24,lo8(-113)
	call LCD_cmd
.LVL58:
	.loc 1 267 0
	ldi r24,lo8(.LC2)
	ldi r25,hi8(.LC2)
	call LCD_string
.LVL59:
	.loc 1 274 0
	ldi r24,lo8(-49)
	call LCD_cmd
.LVL60:
	.loc 1 275 0
	ldi r24,lo8(.LC3)
	ldi r25,hi8(.LC3)
	call LCD_string
.LVL61:
	ret
	.cfi_endproc
.LFE17:
	.size	LCD_Display, .-LCD_Display
	.text
.Letext0:
	.file 3 "c:\\program files (x86)\\atmel\\studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include\\stdint.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x713
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF20
	.byte	0xc
	.long	.LASF21
	.long	.LASF22
	.long	.Ldebug_ranges0+0
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF4
	.byte	0x3
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
	.uleb128 0x3
	.long	.LASF5
	.byte	0x3
	.byte	0x82
	.long	0x62
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
	.uleb128 0x5
	.byte	0x2
	.long	0x7d
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF23
	.byte	0x2
	.byte	0xa6
	.byte	0x1
	.byte	0x3
	.long	0xbd
	.uleb128 0x7
	.long	.LASF24
	.byte	0x2
	.byte	0xa6
	.long	0xbd
	.uleb128 0x8
	.long	.LASF10
	.byte	0x2
	.byte	0xa8
	.long	0xbd
	.uleb128 0x8
	.long	.LASF11
	.byte	0x2
	.byte	0xac
	.long	0x57
	.uleb128 0x9
	.byte	0x1
	.long	.LASF25
	.byte	0x2
	.byte	0xad
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.long	.LASF12
	.uleb128 0xa
	.byte	0x1
	.long	.LASF13
	.byte	0x1
	.byte	0x1d
	.byte	0x1
	.long	.LFB11
	.long	.LFE11
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x13c
	.uleb128 0xb
	.string	"ms"
	.byte	0x1
	.byte	0x1d
	.long	0x49
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.uleb128 0xc
	.long	.LBB33
	.long	.LBE33
	.uleb128 0xd
	.string	"i"
	.byte	0x1
	.byte	0x1f
	.long	0x49
	.long	.LLST0
	.uleb128 0xe
	.long	0x84
	.long	.LBB34
	.long	.LBE34
	.byte	0x1
	.byte	0x21
	.uleb128 0xf
	.long	0x91
	.long	.LLST1
	.uleb128 0xc
	.long	.LBB35
	.long	.LBE35
	.uleb128 0x10
	.long	0x9c
	.long	.LLST2
	.uleb128 0x10
	.long	0xa7
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF26
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.long	.LFB12
	.long	.LFE12
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.long	.LASF14
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.long	.LFB13
	.long	.LFE13
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x522
	.uleb128 0x12
	.long	0x84
	.long	.LBB36
	.long	.LBE36
	.byte	0x1
	.byte	0x40
	.long	0x1a5
	.uleb128 0xf
	.long	0x91
	.long	.LLST4
	.uleb128 0xc
	.long	.LBB37
	.long	.LBE37
	.uleb128 0x10
	.long	0x9c
	.long	.LLST5
	.uleb128 0x10
	.long	0xa7
	.long	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB38
	.long	.LBE38
	.byte	0x1
	.byte	0x46
	.long	0x1de
	.uleb128 0xf
	.long	0x91
	.long	.LLST7
	.uleb128 0xc
	.long	.LBB39
	.long	.LBE39
	.uleb128 0x10
	.long	0x9c
	.long	.LLST8
	.uleb128 0x10
	.long	0xa7
	.long	.LLST9
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.byte	0x4c
	.long	0x217
	.uleb128 0xf
	.long	0x91
	.long	.LLST10
	.uleb128 0xc
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x10
	.long	0x9c
	.long	.LLST11
	.uleb128 0x10
	.long	0xa7
	.long	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.byte	0x52
	.long	0x250
	.uleb128 0xf
	.long	0x91
	.long	.LLST13
	.uleb128 0xc
	.long	.LBB43
	.long	.LBE43
	.uleb128 0x10
	.long	0x9c
	.long	.LLST14
	.uleb128 0x10
	.long	0xa7
	.long	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.byte	0x5a
	.long	0x289
	.uleb128 0xf
	.long	0x91
	.long	.LLST16
	.uleb128 0xc
	.long	.LBB45
	.long	.LBE45
	.uleb128 0x10
	.long	0x9c
	.long	.LLST17
	.uleb128 0x10
	.long	0xa7
	.long	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB46
	.long	.LBE46
	.byte	0x1
	.byte	0x60
	.long	0x2c2
	.uleb128 0xf
	.long	0x91
	.long	.LLST19
	.uleb128 0xc
	.long	.LBB47
	.long	.LBE47
	.uleb128 0x10
	.long	0x9c
	.long	.LLST20
	.uleb128 0x10
	.long	0xa7
	.long	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB48
	.long	.LBE48
	.byte	0x1
	.byte	0x66
	.long	0x2fb
	.uleb128 0xf
	.long	0x91
	.long	.LLST22
	.uleb128 0xc
	.long	.LBB49
	.long	.LBE49
	.uleb128 0x10
	.long	0x9c
	.long	.LLST23
	.uleb128 0x10
	.long	0xa7
	.long	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB50
	.long	.LBE50
	.byte	0x1
	.byte	0x6c
	.long	0x334
	.uleb128 0xf
	.long	0x91
	.long	.LLST25
	.uleb128 0xc
	.long	.LBB51
	.long	.LBE51
	.uleb128 0x10
	.long	0x9c
	.long	.LLST26
	.uleb128 0x10
	.long	0xa7
	.long	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB52
	.long	.LBE52
	.byte	0x1
	.byte	0x72
	.long	0x36d
	.uleb128 0xf
	.long	0x91
	.long	.LLST28
	.uleb128 0xc
	.long	.LBB53
	.long	.LBE53
	.uleb128 0x10
	.long	0x9c
	.long	.LLST29
	.uleb128 0x10
	.long	0xa7
	.long	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB54
	.long	.LBE54
	.byte	0x1
	.byte	0x78
	.long	0x3a6
	.uleb128 0xf
	.long	0x91
	.long	.LLST31
	.uleb128 0xc
	.long	.LBB55
	.long	.LBE55
	.uleb128 0x10
	.long	0x9c
	.long	.LLST32
	.uleb128 0x10
	.long	0xa7
	.long	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB56
	.long	.LBE56
	.byte	0x1
	.byte	0x7e
	.long	0x3df
	.uleb128 0xf
	.long	0x91
	.long	.LLST34
	.uleb128 0xc
	.long	.LBB57
	.long	.LBE57
	.uleb128 0x10
	.long	0x9c
	.long	.LLST35
	.uleb128 0x10
	.long	0xa7
	.long	.LLST36
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB58
	.long	.LBE58
	.byte	0x1
	.byte	0x84
	.long	0x418
	.uleb128 0xf
	.long	0x91
	.long	.LLST37
	.uleb128 0xc
	.long	.LBB59
	.long	.LBE59
	.uleb128 0x10
	.long	0x9c
	.long	.LLST38
	.uleb128 0x10
	.long	0xa7
	.long	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB60
	.long	.LBE60
	.byte	0x1
	.byte	0x8a
	.long	0x451
	.uleb128 0xf
	.long	0x91
	.long	.LLST40
	.uleb128 0xc
	.long	.LBB61
	.long	.LBE61
	.uleb128 0x10
	.long	0x9c
	.long	.LLST41
	.uleb128 0x10
	.long	0xa7
	.long	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x12
	.long	0x84
	.long	.LBB62
	.long	.LBE62
	.byte	0x1
	.byte	0x8f
	.long	0x48a
	.uleb128 0xf
	.long	0x91
	.long	.LLST43
	.uleb128 0xc
	.long	.LBB63
	.long	.LBE63
	.uleb128 0x10
	.long	0x9c
	.long	.LLST44
	.uleb128 0x10
	.long	0xa7
	.long	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x13
	.long	.LVL5
	.long	0xc4
	.long	0x4a3
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.long	.LVL6
	.long	0x13c
	.uleb128 0x15
	.long	.LVL8
	.long	0x13c
	.uleb128 0x15
	.long	.LVL10
	.long	0x13c
	.uleb128 0x15
	.long	.LVL12
	.long	0x13c
	.uleb128 0x15
	.long	.LVL14
	.long	0x13c
	.uleb128 0x15
	.long	.LVL16
	.long	0x13c
	.uleb128 0x15
	.long	.LVL18
	.long	0x13c
	.uleb128 0x15
	.long	.LVL20
	.long	0x13c
	.uleb128 0x15
	.long	.LVL22
	.long	0x13c
	.uleb128 0x15
	.long	.LVL24
	.long	0x13c
	.uleb128 0x15
	.long	.LVL26
	.long	0x13c
	.uleb128 0x15
	.long	.LVL28
	.long	0x13c
	.uleb128 0x15
	.long	.LVL30
	.long	0x13c
	.uleb128 0x15
	.long	.LVL32
	.long	0x13c
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF15
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.long	.LFB14
	.long	.LFE14
	.long	.LLST46
	.byte	0x1
	.long	0x599
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.byte	0x99
	.long	0x7d
	.long	.LLST47
	.uleb128 0x18
	.long	.LASF17
	.byte	0x1
	.byte	0x9b
	.long	0x7d
	.long	.LLST48
	.uleb128 0x15
	.long	.LVL36
	.long	0x13c
	.uleb128 0x13
	.long	.LVL37
	.long	0xc4
	.long	0x57b
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL38
	.long	0x13c
	.uleb128 0x19
	.long	.LVL39
	.long	0xc4
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF18
	.byte	0x1
	.byte	0xc7
	.byte	0x1
	.long	.LFB15
	.long	.LFE15
	.long	.LLST49
	.byte	0x1
	.long	0x610
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.byte	0xc7
	.long	0x7d
	.long	.LLST50
	.uleb128 0x18
	.long	.LASF17
	.byte	0x1
	.byte	0xc9
	.long	0x7d
	.long	.LLST51
	.uleb128 0x15
	.long	.LVL43
	.long	0x13c
	.uleb128 0x13
	.long	.LVL44
	.long	0xc4
	.long	0x5f2
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.long	.LVL45
	.long	0x13c
	.uleb128 0x19
	.long	.LVL46
	.long	0xc4
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.long	.LASF19
	.byte	0x1
	.byte	0xf5
	.byte	0x1
	.long	.LFB16
	.long	.LFE16
	.long	.LLST52
	.byte	0x1
	.long	0x643
	.uleb128 0x17
	.long	.LASF16
	.byte	0x1
	.byte	0xf5
	.long	0x77
	.long	.LLST53
	.uleb128 0x15
	.long	.LVL51
	.long	0x522
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF27
	.byte	0x1
	.byte	0xfd
	.byte	0x1
	.long	.LFB17
	.long	.LFE17
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x13
	.long	.LVL54
	.long	0x599
	.long	0x66d
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x80
	.byte	0
	.uleb128 0x13
	.long	.LVL55
	.long	0x610
	.long	0x689
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC0
	.byte	0
	.uleb128 0x13
	.long	.LVL56
	.long	0x599
	.long	0x69d
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xc3
	.byte	0
	.uleb128 0x13
	.long	.LVL57
	.long	0x610
	.long	0x6b9
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC1
	.byte	0
	.uleb128 0x13
	.long	.LVL58
	.long	0x599
	.long	0x6cd
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0x8f
	.byte	0
	.uleb128 0x13
	.long	.LVL59
	.long	0x610
	.long	0x6e9
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC2
	.byte	0
	.uleb128 0x13
	.long	.LVL60
	.long	0x599
	.long	0x6fd
	.uleb128 0x14
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x9
	.byte	0xcf
	.byte	0
	.uleb128 0x19
	.long	.LVL61
	.long	0x610
	.uleb128 0x14
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	.LC3
	.byte	0
	.byte	0
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x5
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL1
	.long	.LVL4
	.word	0x6
	.byte	0x62
	.byte	0x93
	.uleb128 0x1
	.byte	0x63
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST1:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x3f800000
	.long	0
	.long	0
.LLST2:
	.long	.LVL1
	.long	.LVL2
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x467a0000
	.long	0
	.long	0
.LLST3:
	.long	.LVL1
	.long	.LVL2
	.word	0x4
	.byte	0xa
	.word	0x3e80
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST5:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST6:
	.long	.LVL6
	.long	.LVL7
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST8:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST9:
	.long	.LVL8
	.long	.LVL9
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST11:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST12:
	.long	.LVL10
	.long	.LVL11
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST13:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST14:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST15:
	.long	.LVL12
	.long	.LVL13
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST17:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST18:
	.long	.LVL14
	.long	.LVL15
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST19:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST20:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST21:
	.long	.LVL16
	.long	.LVL17
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST22:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST23:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST24:
	.long	.LVL18
	.long	.LVL19
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST26:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST27:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST29:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST30:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST32:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST33:
	.long	.LVL24
	.long	.LVL25
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST34:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST35:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST36:
	.long	.LVL26
	.long	.LVL27
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST37:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST38:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST39:
	.long	.LVL28
	.long	.LVL29
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL30
	.long	.LVL31
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST41:
	.long	.LVL30
	.long	.LVL31
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST42:
	.long	.LVL30
	.long	.LVL31
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST43:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x41200000
	.long	0
	.long	0
.LLST44:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0x9e
	.uleb128 0x4
	.long	0x481c4000
	.long	0
	.long	0
.LLST45:
	.long	.LVL32
	.long	.LVL33
	.word	0x6
	.byte	0xc
	.long	0x27100
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LFB14
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LFE14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST47:
	.long	.LVL34
	.long	.LVL36-1
	.word	0x1
	.byte	0x68
	.long	.LVL36-1
	.long	.LVL40
	.word	0x1
	.byte	0x6c
	.long	.LVL40
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST48:
	.long	.LVL35
	.long	.LVL36-1
	.word	0x1
	.byte	0x68
	.long	.LVL36-1
	.long	.LVL40
	.word	0x1
	.byte	0x6c
	.long	.LVL40
	.long	.LFE14
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST49:
	.long	.LFB15
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI1
	.long	.LFE15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST50:
	.long	.LVL41
	.long	.LVL43-1
	.word	0x1
	.byte	0x68
	.long	.LVL43-1
	.long	.LVL47
	.word	0x1
	.byte	0x6c
	.long	.LVL47
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST51:
	.long	.LVL42
	.long	.LVL43-1
	.word	0x1
	.byte	0x68
	.long	.LVL43-1
	.long	.LVL47
	.word	0x1
	.byte	0x6c
	.long	.LVL47
	.long	.LFE15
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST52:
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
	.long	.LFE16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST53:
	.long	.LVL48
	.long	.LVL49
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL49
	.long	.LVL52
	.word	0x6
	.byte	0x6c
	.byte	0x93
	.uleb128 0x1
	.byte	0x6d
	.byte	0x93
	.uleb128 0x1
	.long	.LVL52
	.long	.LVL53
	.word	0x3
	.byte	0x8c
	.sleb128 -1
	.byte	0x9f
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
.LASF22:
	.string	"C:\\\\Users\\\\Armin Baumgartner\\\\Desktop\\\\ansteuerung\\\\ansteuerung\\\\Debug"
.LASF15:
	.string	"LCD_send"
.LASF26:
	.string	"Enable"
.LASF21:
	.string	".././lcd.c"
.LASF25:
	.string	"__builtin_avr_delay_cycles"
.LASF16:
	.string	"data"
.LASF1:
	.string	"unsigned char"
.LASF13:
	.string	"delay_ms"
.LASF20:
	.string	"GNU C99 5.4.0 -mn-flash=1 -mno-skip-bug -mmcu=avr5 -g2 -O1 -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums"
.LASF6:
	.string	"long unsigned int"
.LASF17:
	.string	"temp"
.LASF23:
	.string	"_delay_ms"
.LASF12:
	.string	"double"
.LASF18:
	.string	"LCD_cmd"
.LASF19:
	.string	"LCD_string"
.LASF27:
	.string	"LCD_Display"
.LASF14:
	.string	"LCD_init"
.LASF2:
	.string	"unsigned int"
.LASF8:
	.string	"long long unsigned int"
.LASF4:
	.string	"uint8_t"
.LASF7:
	.string	"long long int"
.LASF9:
	.string	"char"
.LASF11:
	.string	"__ticks_dc"
.LASF10:
	.string	"__tmp"
.LASF5:
	.string	"uint32_t"
.LASF3:
	.string	"long int"
.LASF0:
	.string	"signed char"
.LASF24:
	.string	"__ms"
	.ident	"GCC: (AVR_8_bit_GNU_Toolchain_3.6.1_1750) 5.4.0"
.global __do_copy_data

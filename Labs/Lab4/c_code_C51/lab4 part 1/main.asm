;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat Nov 10 21:24:19 2018
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _External10_ISR
	.globl _write_i2c
	.globl _read_i2c
	.globl _main
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD0
	.globl _TXD
	.globl _RXD0
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _BREG_F7
	.globl _BREG_F6
	.globl _BREG_F5
	.globl _BREG_F4
	.globl _BREG_F3
	.globl _BREG_F2
	.globl _BREG_F1
	.globl _BREG_F0
	.globl _P5_7
	.globl _P5_6
	.globl _P5_5
	.globl _P5_4
	.globl _P5_3
	.globl _P5_2
	.globl _P5_1
	.globl _P5_0
	.globl _P4_7
	.globl _P4_6
	.globl _P4_5
	.globl _P4_4
	.globl _P4_3
	.globl _P4_2
	.globl _P4_1
	.globl _P4_0
	.globl _PX0L
	.globl _PT0L
	.globl _PX1L
	.globl _PT1L
	.globl _PLS
	.globl _PT2L
	.globl _PPCL
	.globl _EC
	.globl _CCF0
	.globl _CCF1
	.globl _CCF2
	.globl _CCF3
	.globl _CCF4
	.globl _CR
	.globl _CF
	.globl _TF2
	.globl _EXF2
	.globl _RCLK
	.globl _TCLK
	.globl _EXEN2
	.globl _TR2
	.globl _C_T2
	.globl _CP_RL2
	.globl _T2CON_7
	.globl _T2CON_6
	.globl _T2CON_5
	.globl _T2CON_4
	.globl _T2CON_3
	.globl _T2CON_2
	.globl _T2CON_1
	.globl _T2CON_0
	.globl _PT2
	.globl _ET2
	.globl _TMOD
	.globl _TL1
	.globl _TL0
	.globl _TH1
	.globl _TH0
	.globl _TCON
	.globl _SP
	.globl _SCON
	.globl _SBUF0
	.globl _SBUF
	.globl _PSW
	.globl _PCON
	.globl _P3
	.globl _P2
	.globl _P1
	.globl _P0
	.globl _IP
	.globl _IE
	.globl _DP0L
	.globl _DPL
	.globl _DP0H
	.globl _DPH
	.globl _B
	.globl _ACC
	.globl _EECON
	.globl _KBF
	.globl _KBE
	.globl _KBLS
	.globl _BRL
	.globl _BDRCON
	.globl _T2MOD
	.globl _SPDAT
	.globl _SPSTA
	.globl _SPCON
	.globl _SADEN
	.globl _SADDR
	.globl _WDTPRG
	.globl _WDTRST
	.globl _P5
	.globl _P4
	.globl _IPH1
	.globl _IPL1
	.globl _IPH0
	.globl _IPL0
	.globl _IEN1
	.globl _IEN0
	.globl _CMOD
	.globl _CL
	.globl _CH
	.globl _CCON
	.globl _CCAPM4
	.globl _CCAPM3
	.globl _CCAPM2
	.globl _CCAPM1
	.globl _CCAPM0
	.globl _CCAP4L
	.globl _CCAP3L
	.globl _CCAP2L
	.globl _CCAP1L
	.globl _CCAP0L
	.globl _CCAP4H
	.globl _CCAP3H
	.globl _CCAP2H
	.globl _CCAP1H
	.globl _CCAP0H
	.globl _CKCKON1
	.globl _CKCKON0
	.globl _CKRL
	.globl _AUXR1
	.globl _AUXR
	.globl _TH2
	.globl _TL2
	.globl _RCAP2H
	.globl _RCAP2L
	.globl _T2CON
	.globl _read_cont_PARM_2
	.globl _write_eeprom_PARM_2
	.globl _Start
	.globl _Stop
	.globl _write_eeprom
	.globl _read_eeprom
	.globl _read_cont
	.globl _reset
	.globl _ack
	.globl _Sendnack
	.globl _SendAck
	.globl _Delay
	.globl _serial_init
	.globl _putchar
	.globl _getchar
	.globl _get_num
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (DATA)
_T2CON	=	0x00c8
_RCAP2L	=	0x00ca
_RCAP2H	=	0x00cb
_TL2	=	0x00cc
_TH2	=	0x00cd
_AUXR	=	0x008e
_AUXR1	=	0x00a2
_CKRL	=	0x0097
_CKCKON0	=	0x008f
_CKCKON1	=	0x008f
_CCAP0H	=	0x00fa
_CCAP1H	=	0x00fb
_CCAP2H	=	0x00fc
_CCAP3H	=	0x00fd
_CCAP4H	=	0x00fe
_CCAP0L	=	0x00ea
_CCAP1L	=	0x00eb
_CCAP2L	=	0x00ec
_CCAP3L	=	0x00ed
_CCAP4L	=	0x00ee
_CCAPM0	=	0x00da
_CCAPM1	=	0x00db
_CCAPM2	=	0x00dc
_CCAPM3	=	0x00dd
_CCAPM4	=	0x00de
_CCON	=	0x00d8
_CH	=	0x00f9
_CL	=	0x00e9
_CMOD	=	0x00d9
_IEN0	=	0x00a8
_IEN1	=	0x00b1
_IPL0	=	0x00b8
_IPH0	=	0x00b7
_IPL1	=	0x00b2
_IPH1	=	0x00b3
_P4	=	0x00c0
_P5	=	0x00d8
_WDTRST	=	0x00a6
_WDTPRG	=	0x00a7
_SADDR	=	0x00a9
_SADEN	=	0x00b9
_SPCON	=	0x00c3
_SPSTA	=	0x00c4
_SPDAT	=	0x00c5
_T2MOD	=	0x00c9
_BDRCON	=	0x009b
_BRL	=	0x009a
_KBLS	=	0x009c
_KBE	=	0x009d
_KBF	=	0x009e
_EECON	=	0x00d2
_ACC	=	0x00e0
_B	=	0x00f0
_DPH	=	0x0083
_DP0H	=	0x0083
_DPL	=	0x0082
_DP0L	=	0x0082
_IE	=	0x00a8
_IP	=	0x00b8
_P0	=	0x0080
_P1	=	0x0090
_P2	=	0x00a0
_P3	=	0x00b0
_PCON	=	0x0087
_PSW	=	0x00d0
_SBUF	=	0x0099
_SBUF0	=	0x0099
_SCON	=	0x0098
_SP	=	0x0081
_TCON	=	0x0088
_TH0	=	0x008c
_TH1	=	0x008d
_TL0	=	0x008a
_TL1	=	0x008b
_TMOD	=	0x0089
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (DATA)
_ET2	=	0x00ad
_PT2	=	0x00bd
_T2CON_0	=	0x00c8
_T2CON_1	=	0x00c9
_T2CON_2	=	0x00ca
_T2CON_3	=	0x00cb
_T2CON_4	=	0x00cc
_T2CON_5	=	0x00cd
_T2CON_6	=	0x00ce
_T2CON_7	=	0x00cf
_CP_RL2	=	0x00c8
_C_T2	=	0x00c9
_TR2	=	0x00ca
_EXEN2	=	0x00cb
_TCLK	=	0x00cc
_RCLK	=	0x00cd
_EXF2	=	0x00ce
_TF2	=	0x00cf
_CF	=	0x00df
_CR	=	0x00de
_CCF4	=	0x00dc
_CCF3	=	0x00db
_CCF2	=	0x00da
_CCF1	=	0x00d9
_CCF0	=	0x00d8
_EC	=	0x00ae
_PPCL	=	0x00be
_PT2L	=	0x00bd
_PLS	=	0x00bc
_PT1L	=	0x00bb
_PX1L	=	0x00ba
_PT0L	=	0x00b9
_PX0L	=	0x00b8
_P4_0	=	0x00c0
_P4_1	=	0x00c1
_P4_2	=	0x00c2
_P4_3	=	0x00c3
_P4_4	=	0x00c4
_P4_5	=	0x00c5
_P4_6	=	0x00c6
_P4_7	=	0x00c7
_P5_0	=	0x00d8
_P5_1	=	0x00d9
_P5_2	=	0x00da
_P5_3	=	0x00db
_P5_4	=	0x00dc
_P5_5	=	0x00dd
_P5_6	=	0x00de
_P5_7	=	0x00df
_BREG_F0	=	0x00f0
_BREG_F1	=	0x00f1
_BREG_F2	=	0x00f2
_BREG_F3	=	0x00f3
_BREG_F4	=	0x00f4
_BREG_F5	=	0x00f5
_BREG_F6	=	0x00f6
_BREG_F7	=	0x00f7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_RXD0	=	0x00b0
_TXD	=	0x00b1
_TXD0	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
	.area OSEG    (OVR,DATA)
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
_main_a1_1_1:
	.ds 2
_read_i2c_rxdata_1_1:
	.ds 1
_write_i2c_byte_1_1:
	.ds 1
_write_eeprom_PARM_2:
	.ds 1
_write_eeprom_a_1_1:
	.ds 2
_read_eeprom_add_1_1:
	.ds 2
_read_cont_PARM_2:
	.ds 2
_read_cont_start_add_1_1:
	.ds 2
_read_cont_ctr_1_1:
	.ds 2
_putchar_c_1_1:
	.ds 1
_get_num_val_1_1:
	.ds 10
_get_num_i_1_1:
	.ds 2
_get_num_val1_1_1:
	.ds 2
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	ljmp	_External10_ISR
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area CSEG    (CODE)
__sdcc_program_startup:
	lcall	_main
;	return from main will lock up
	sjmp .
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a1                        Allocated with name '_main_a1_1_1'
;c                         Allocated with name '_main_c_1_1'
;d                         Allocated with name '_main_d_1_1'
;e                         Allocated with name '_main_e_1_1'
;choice                    Allocated with name '_main_choice_1_1'
;b                         Allocated with name '_main_b_1_1'
;------------------------------------------------------------
;	main.c:22: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:26: uint16_t a1=0,c,d,e,choice;
;	genAssign
	mov	dptr,#_main_a1_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:28: serial_init();
;	genCall
	lcall	_serial_init
;	main.c:29: IT0=1;
;	genAssign
	setb	_IT0
;	main.c:30: EX0=1;
;	genAssign
	setb	_EX0
;	main.c:31: EA=1; // Calling serial communication
;	genAssign
	setb	_EA
;	main.c:32: while(1)
00132$:
;	main.c:34: printf_tiny("\n\rPLEASE ENTER AMONGST FOLLOWING OPTIONS (JUST PRESS OPTION NUMBER):--\n\r1>READ\n\r2>WRITE\n\r3>READ CONTINOUS\n\r4>RESET\n\r"); // asking user to choose from the following options
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:35: printf_tiny("entered choice: ");
;	genIpush
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:36: choice=get_num();
;	genCall
	lcall	_get_num
	mov	r2,dpl
	mov	r3,dph
;	main.c:37: if(choice==1) // if choice is one execute read_eeprom function
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x01,00129$
	cjne	r3,#0x00,00129$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00149$
;	Peephole 300	removed redundant label 00150$
;	main.c:39: label1: printf_tiny("\n\renter read address");
00101$:
;	genIpush
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:40: c=get_num();
;	genCall
	lcall	_get_num
	mov	r4,dpl
	mov	r5,dph
;	main.c:41: if (c>0x7ff) // check if entered address is in range
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r4
	mov	a,#0x07
	subb	a,r5
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00103$
;	Peephole 300	removed redundant label 00151$
;	main.c:43: printf_tiny("invalid address , enter again ");
;	genIpush
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:44: goto label1;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00103$:
;	main.c:48: read_eeprom(a1);
;	genAssign
	mov	dptr,#_main_a1_1_1
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	lcall	_read_eeprom
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00132$
00129$:
;	main.c:51: else if(choice==2) //if choice is 2 execute write_eeprom function
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x02,00152$
	cjne	r3,#0x00,00152$
	sjmp	00153$
00152$:
	ljmp	00126$
00153$:
;	main.c:53: label2: printf_tiny("\n\renter address");
00105$:
;	genIpush
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:54: a1=get_num();
;	genCall
	lcall	_get_num
	mov	r4,dpl
	mov	r5,dph
;	genAssign
	mov	dptr,#_main_a1_1_1
	mov	a,r4
	movx	@dptr,a
	inc	dptr
	mov	a,r5
	movx	@dptr,a
;	main.c:55: if (a1>0x7ff) // check if entered address is in range
;	genAssign
	mov	ar6,r4
	mov	ar7,r5
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00154$
;	main.c:57: printf_tiny("invalid address , enter again ");
;	genIpush
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:58: goto label2;
;	main.c:61: label5: printf_tiny("\n\renter data");
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00105$
00108$:
;	genIpush
	push	ar4
	push	ar5
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
;	main.c:62: b=get_num();
;	genCall
	push	ar4
	push	ar5
	lcall	_get_num
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
;	main.c:63: if (b>0xff)// check if entered data is 8 bit
;	genAssign
	mov	ar0,r6
	mov	ar1,r7
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r0
;	Peephole 181	changed mov to clr
	clr	a
	subb	a,r1
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00110$
;	Peephole 300	removed redundant label 00155$
;	main.c:65: printf_tiny("data out of range, enter again ");
;	genIpush
	push	ar4
	push	ar5
	mov	a,#__str_6
	push	acc
	mov	a,#(__str_6 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
;	main.c:66: goto label5;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00110$:
;	main.c:68: write_eeprom(a1,b);// write to eeprom after taking adress and data
;	genAssign
;	genCast
	mov	dptr,#_write_eeprom_PARM_2
	mov	a,r6
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	lcall	_write_eeprom
	ljmp	00132$
00126$:
;	main.c:71: else if(choice==3)//if choice is 3 execute read_cont function
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x03,00156$
	cjne	r3,#0x00,00156$
	sjmp	00157$
00156$:
	ljmp	00123$
00157$:
;	main.c:73: label3: printf_tiny("\n\renter strt address");
00111$:
;	genIpush
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:74: d=get_num();
;	genCall
	lcall	_get_num
	mov	r4,dpl
	mov	r5,dph
;	main.c:75: if (d>0x7ff)// check if entered address is in range
;	genAssign
	mov	ar6,r4
	mov	ar7,r5
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r6
	mov	a,#0x07
	subb	a,r7
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00114$
;	Peephole 300	removed redundant label 00158$
;	main.c:77: printf_tiny("invalid address , enter again ");
;	genIpush
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:78: goto label3;
;	main.c:80: label4: printf_tiny("\n\renter end address");
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00114$:
;	genIpush
	push	ar4
	push	ar5
	mov	a,#__str_8
	push	acc
	mov	a,#(__str_8 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
;	main.c:81: e=get_num();
;	genCall
	push	ar4
	push	ar5
	lcall	_get_num
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
;	main.c:82: if (e>0x7ff)// check if entered address is in range
;	genAssign
	mov	ar0,r6
	mov	ar1,r7
;	genCmpGt
;	genCmp
	clr	c
	mov	a,#0xFF
	subb	a,r0
	mov	a,#0x07
	subb	a,r1
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00116$
;	Peephole 300	removed redundant label 00159$
;	main.c:84: printf_tiny("invalid address , enter again ");
;	genIpush
	push	ar4
	push	ar5
	mov	a,#__str_3
	push	acc
	mov	a,#(__str_3 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
;	main.c:85: goto label4;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00114$
00116$:
;	main.c:87: if(d>e)
;	genAssign
	mov	ar0,r4
	mov	ar1,r5
;	genIpush
	push	ar4
	push	ar5
;	genAssign
	mov	ar4,r6
	mov	ar5,r7
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r0
	mov	a,r5
	subb	a,r1
	clr	a
	rlc	a
;	genIpop
	pop	ar5
	pop	ar4
;	genIfx
;	genIfxJump
;	Peephole 108.c	removed ljmp by inverse jump logic
	jz	00118$
;	Peephole 300	removed redundant label 00160$
;	main.c:89: printf_tiny("invalid!");
;	genIpush
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:90: goto label3;
	ljmp	00111$
00118$:
;	main.c:93: read_cont(d,e);// reading continuously from start adress to end address in the memory
;	genAssign
	mov	dptr,#_read_cont_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	lcall	_read_cont
	ljmp	00132$
00123$:
;	main.c:95: else if(choice==4)//if choice is 4 reset function
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x04,00120$
	cjne	r3,#0x00,00120$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00161$
;	Peephole 300	removed redundant label 00162$
;	main.c:97: reset(); // software reset
;	genCall
	lcall	_reset
	ljmp	00132$
00120$:
;	main.c:101: printf_tiny("\n\n\rPLEASE ENTER VALID OPTION!!\n\n\n\n\n");
;	genIpush
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	ljmp	00132$
;	Peephole 259.b	removed redundant label 00134$ and ret
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Start'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:105: void Start() //function to start i2c
;	-----------------------------------------
;	 function Start
;	-----------------------------------------
_Start:
;	main.c:107: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:108: SDA = 1; // make sda line high
;	genAssign
	setb	_P1_6
;	main.c:109: SCL = 1; //toggling scl line from 0 to 1
;	genAssign
	setb	_P1_5
;	main.c:110: Delay(); // delay of 10us
;	genCall
	lcall	_Delay
;	main.c:111: SDA = 0;
;	genAssign
	clr	_P1_6
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Stop'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:114: void Stop()
;	-----------------------------------------
;	 function Stop
;	-----------------------------------------
_Stop:
;	main.c:116: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:117: SDA = 0;
;	genAssign
	clr	_P1_6
;	main.c:118: SCL = 1;
;	genAssign
	setb	_P1_5
;	main.c:119: Delay();
;	genCall
	lcall	_Delay
;	main.c:120: SDA = 1;
;	genAssign
	setb	_P1_6
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'read_i2c'
;------------------------------------------------------------
;i                         Allocated with name '_read_i2c_i_1_1'
;rxdata                    Allocated with name '_read_i2c_rxdata_1_1'
;------------------------------------------------------------
;	main.c:124: uint8_t read_i2c()
;	-----------------------------------------
;	 function read_i2c
;	-----------------------------------------
_read_i2c:
;	main.c:127: uint8_t rxdata=0;
;	genAssign
	mov	dptr,#_read_i2c_rxdata_1_1
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:128: while(i<=7)
;	genAssign
	mov	r2,#0x00
00101$:
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x07 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00103$
;	Peephole 300	removed redundant label 00109$
;	main.c:130: SCL = 0;
;	genAssign
	clr	_P1_5
;	main.c:131: SDA=1;
;	genAssign
	setb	_P1_6
;	main.c:132: SCL=1;
;	genAssign
	setb	_P1_5
;	main.c:133: Delay();
;	genCall
	push	ar2
	lcall	_Delay
	pop	ar2
;	main.c:134: rxdata=((rxdata<<1)|SDA);
;	genAssign
	mov	dptr,#_read_i2c_rxdata_1_1
	movx	a,@dptr
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
;	Peephole 105	removed redundant mov
;	Peephole 204	removed redundant mov
	add	a,acc
	mov	r3,a
;	genAssign
	clr	a
	mov	c,_P1_6
	rlc	a
;	genOr
	mov	r4,a
	mov	dptr,#_read_i2c_rxdata_1_1
;	Peephole 177.d	removed redundant move
	orl	a,r3
	movx	@dptr,a
;	main.c:135: i++;
;	genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00103$:
;	main.c:137: return rxdata;
;	genAssign
	mov	dptr,#_read_i2c_rxdata_1_1
	movx	a,@dptr
;	genRet
;	Peephole 234.a	loading dpl directly from a(ccumulator), r2 not set
	mov	dpl,a
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_i2c'
;------------------------------------------------------------
;byte                      Allocated with name '_write_i2c_byte_1_1'
;i                         Allocated with name '_write_i2c_i_1_1'
;------------------------------------------------------------
;	main.c:143: void write_i2c(unsigned char byte)
;	-----------------------------------------
;	 function write_i2c
;	-----------------------------------------
_write_i2c:
;	genReceive
	mov	a,dpl
	mov	dptr,#_write_i2c_byte_1_1
	movx	@dptr,a
;	main.c:146: while(i>=0)
;	genAssign
	mov	dptr,#_write_i2c_byte_1_1
	movx	a,@dptr
	mov	r2,a
;	genAssign
	mov	r3,#0x07
00101$:
;	genCmpLt
;	genCmp
	mov	a,r3
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.7,00104$
;	Peephole 300	removed redundant label 00109$
;	main.c:148: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:149: SDA=((byte>>i)&0x01);
;	genRightShift
	mov	b,r3
	inc	b
	mov	a,r2
	sjmp	00111$
00110$:
	clr	c
	rrc	a
00111$:
	djnz	b,00110$
;	genGetAbit
	mov	r4,a
;	Peephole 105	removed redundant mov
	rrc	a
	mov	_P1_6,c
;	main.c:150: SCL=1;
;	genAssign
	setb	_P1_5
;	main.c:151: Delay();
;	genCall
	push	ar2
	push	ar3
	lcall	_Delay
	pop	ar3
	pop	ar2
;	main.c:152: i--;
;	genMinus
;	genMinusDec
	dec	r3
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'write_eeprom'
;------------------------------------------------------------
;byt                       Allocated with name '_write_eeprom_PARM_2'
;a                         Allocated with name '_write_eeprom_a_1_1'
;ack_check                 Allocated with name '_write_eeprom_ack_check_1_1'
;vola                      Allocated with name '_write_eeprom_vola_1_1'
;------------------------------------------------------------
;	main.c:156: void write_eeprom(uint16_t a,uint8_t byt)
;	-----------------------------------------
;	 function write_eeprom
;	-----------------------------------------
_write_eeprom:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_write_eeprom_a_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	main.c:160: Start();
;	genCall
	lcall	_Start
;	main.c:161: vola=(0xA0|((a>>7)&0x0e));
;	genAssign
	mov	dptr,#_write_eeprom_a_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
	mov	ar4,r2
;	Peephole 177.d	removed redundant move
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
;	genAnd
	anl	ar4,#0x0E
	mov	r5,#0x00
;	genOr
	orl	ar4,#0xA0
;	genCast
;	main.c:162: write_i2c(vola);
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_write_i2c
	pop	ar3
	pop	ar2
;	main.c:163: ack_check=ack();
;	genCall
	push	ar2
	push	ar3
	lcall	_ack
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genCast
;	main.c:164: vola=a&0xff;
;	genAnd
	mov	r3,#0x00
;	genCast
;	main.c:165: if (ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x01,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00109$
;	Peephole 300	removed redundant label 00110$
;	main.c:167: write_i2c(vola);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
00102$:
;	main.c:169: ack_check=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:170: vola=byt;
;	genAssign
	mov	dptr,#_write_eeprom_PARM_2
	movx	a,@dptr
	mov	r3,a
;	main.c:171: if (ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00111$
;	Peephole 300	removed redundant label 00112$
;	main.c:173: write_i2c(vola);
;	genCall
	mov	dpl,r3
	lcall	_write_i2c
00104$:
;	main.c:175: ack_check=ack();
;	genCall
	lcall	_ack
;	main.c:176: Stop();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Stop
;
;------------------------------------------------------------
;Allocation info for local variables in function 'read_eeprom'
;------------------------------------------------------------
;add                       Allocated with name '_read_eeprom_add_1_1'
;ack_check                 Allocated with name '_read_eeprom_ack_check_1_1'
;vola                      Allocated with name '_read_eeprom_vola_1_1'
;------------------------------------------------------------
;	main.c:179: void read_eeprom(uint16_t add)
;	-----------------------------------------
;	 function read_eeprom
;	-----------------------------------------
_read_eeprom:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_read_eeprom_add_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	main.c:183: Start();
;	genCall
	lcall	_Start
;	main.c:184: vola=(0xA0|((add>>7)&0x0e));
;	genAssign
	mov	dptr,#_read_eeprom_add_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
	mov	ar4,r2
;	Peephole 177.d	removed redundant move
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
;	genAnd
	anl	ar4,#0x0E
	mov	r5,#0x00
;	genOr
	orl	ar4,#0xA0
;	genCast
;	main.c:185: write_i2c(vola);
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_write_i2c
	pop	ar3
	pop	ar2
;	main.c:186: ack_check=ack();
;	genCall
	push	ar2
	push	ar3
	lcall	_ack
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genCast
;	main.c:187: vola=add&0xff;
;	genAnd
	mov	r3,#0x00
;	genCast
;	main.c:188: if (ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x01,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00112$
;	Peephole 300	removed redundant label 00113$
;	main.c:190: write_i2c(vola);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
00102$:
;	main.c:192: ack_check=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:193: if(ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00114$
;	Peephole 300	removed redundant label 00115$
;	main.c:195: Start();
;	genCall
	lcall	_Start
;	main.c:196: vola=(0xA0|(((add>>7)&0x0e)|0x01));
;	genAssign
	mov	dptr,#_read_eeprom_add_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
;	Peephole 105	removed redundant mov
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
;	genAnd
	anl	ar2,#0x0E
	mov	r3,#0x00
;	genOr
	orl	ar2,#0xA1
;	genCast
;	main.c:197: write_i2c(vola);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
00104$:
;	main.c:200: ack_check=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:201: if(ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00106$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00116$
;	Peephole 300	removed redundant label 00117$
;	main.c:203: printf_tiny("value is : %x ",read_i2c());
;	genCall
	lcall	_read_i2c
	mov	r2,dpl
;	genCast
	mov	r3,#0x00
;	genIpush
	push	ar2
	push	ar3
;	genIpush
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00106$:
;	main.c:205: Sendnack();
;	genCall
	lcall	_Sendnack
;	main.c:206: Stop();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Stop
;
;------------------------------------------------------------
;Allocation info for local variables in function 'read_cont'
;------------------------------------------------------------
;end_add                   Allocated with name '_read_cont_PARM_2'
;start_add                 Allocated with name '_read_cont_start_add_1_1'
;ack_check                 Allocated with name '_read_cont_ack_check_1_1'
;vola                      Allocated with name '_read_cont_vola_1_1'
;i                         Allocated with name '_read_cont_i_1_1'
;offset                    Allocated with name '_read_cont_offset_1_1'
;ctr                       Allocated with name '_read_cont_ctr_1_1'
;------------------------------------------------------------
;	main.c:208: void read_cont(uint16_t start_add,uint16_t end_add)
;	-----------------------------------------
;	 function read_cont
;	-----------------------------------------
_read_cont:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_read_cont_start_add_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	main.c:213: uint16_t ctr=0;
;	genAssign
	mov	dptr,#_read_cont_ctr_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:214: Start();
;	genCall
	lcall	_Start
;	main.c:216: vola=(0xA0|((start_add>>7)&0x0e));
;	genAssign
	mov	dptr,#_read_cont_start_add_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
	mov	ar4,r2
;	Peephole 177.d	removed redundant move
	mov	c,acc.7
	xch	a,r4
	rlc	a
	xch	a,r4
	rlc	a
	xch	a,r4
	anl	a,#0x01
	mov	r5,a
;	genAnd
	anl	ar4,#0x0E
	mov	r5,#0x00
;	genOr
	orl	ar4,#0xA0
;	genCast
;	main.c:217: write_i2c(vola);
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_write_i2c
	pop	ar3
	pop	ar2
;	main.c:218: ack_check=ack();
;	genCall
	push	ar2
	push	ar3
	lcall	_ack
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genCast
;	main.c:219: vola=start_add&0xff;
;	genAnd
	mov	r3,#0x00
;	genCast
;	main.c:220: if (ack_check==1)// checking the value returned by ack function  , if it is true send next address
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r4,#0x01,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00124$
;	Peephole 300	removed redundant label 00125$
;	main.c:222: write_i2c(vola);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
00102$:
;	main.c:224: ack_check=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:225: if(ack_check==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00126$
;	Peephole 300	removed redundant label 00127$
;	main.c:227: Start();
;	genCall
	lcall	_Start
;	main.c:228: vola=(0xA0|(((start_add>>7)&0x0e)|0x01));
;	genAssign
	mov	dptr,#_read_cont_start_add_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRightShift
;	genRightShiftLiteral
;	genrshTwo
	mov	r3,a
;	Peephole 105	removed redundant mov
	mov	c,acc.7
	xch	a,r2
	rlc	a
	xch	a,r2
	rlc	a
	xch	a,r2
	anl	a,#0x01
	mov	r3,a
;	genAnd
	anl	ar2,#0x0E
	mov	r3,#0x00
;	genOr
	orl	ar2,#0xA1
;	genCast
;	main.c:229: write_i2c(vola);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
00104$:
;	main.c:231: ack_check=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:232: if(ack_check==1)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x01,00128$
	sjmp	00129$
00128$:
	ljmp	00113$
00129$:
;	main.c:234: i=start_add;offset=start_add;
;	genAssign
	mov	dptr,#_read_cont_start_add_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	main.c:235: printf_tiny("%x:",start_add);
;	genIpush
	push	ar2
	push	ar3
	push	ar2
	push	ar3
;	genIpush
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar3
	pop	ar2
;	main.c:236: while(i<=end_add)
;	genAssign
	mov	dptr,#_read_cont_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genAssign
	mov	ar6,r2
	mov	ar7,r3
;	genAssign
00109$:
;	genCmpGt
;	genCmp
	clr	c
	mov	a,r4
	subb	a,r2
	mov	a,r5
	subb	a,r3
;	genIfxJump
	jnc	00130$
	ljmp	00113$
00130$:
;	main.c:238: ctr++;
;	genAssign
	mov	dptr,#_read_cont_ctr_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genPlus
	mov	dptr,#_read_cont_ctr_1_1
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r0 instead of ar0
	add	a,r0
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r1 instead of ar1
	addc	a,r1
	inc	dptr
	movx	@dptr,a
;	main.c:239: if(ctr==17)
;	genAssign
	mov	dptr,#_read_cont_ctr_1_1
	movx	a,@dptr
	mov	r0,a
	inc	dptr
	movx	a,@dptr
	mov	r1,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r0,#0x11,00106$
	cjne	r1,#0x00,00106$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00131$
;	Peephole 300	removed redundant label 00132$
;	main.c:241: offset=offset+16;
;	genPlus
;     genPlusIncr
	mov	a,#0x10
;	Peephole 236.a	used r6 instead of ar6
	add	a,r6
	mov	r6,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r7 instead of ar7
	addc	a,r7
	mov	r7,a
;	main.c:242: printf_tiny("\n\r %x:",offset);ctr=1;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar6
	push	ar7
;	genIpush
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genAssign
	mov	dptr,#_read_cont_ctr_1_1
	mov	a,#0x01
	movx	@dptr,a
	clr	a
	inc	dptr
	movx	@dptr,a
00106$:
;	main.c:244: printf_tiny("  %x  ",read_i2c());
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_read_i2c
	mov	r0,dpl
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
	mov	r1,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
;	genIpush
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:245: if(i<end_add)
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r2
	subb	a,r4
	mov	a,r3
	subb	a,r5
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00133$
;	main.c:247: SendAck();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	lcall	_SendAck
	pop	ar7
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
00108$:
;	main.c:249: i++;
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00134$
	inc	r3
00134$:
	ljmp	00109$
00113$:
;	main.c:252: Sendnack();
;	genCall
	lcall	_Sendnack
;	main.c:253: Stop();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Stop
;
;------------------------------------------------------------
;Allocation info for local variables in function 'reset'
;------------------------------------------------------------
;i                         Allocated with name '_reset_i_1_1'
;------------------------------------------------------------
;	main.c:256: void reset()
;	-----------------------------------------
;	 function reset
;	-----------------------------------------
_reset:
;	main.c:258: Start();
;	genCall
	lcall	_Start
;	main.c:259: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:260: SDA=1;
;	genAssign
	setb	_P1_6
;	main.c:261: for (i=0;i<=8;i++)
;	genAssign
	mov	r2,#0x00
00101$:
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x08 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00104$
;	Peephole 300	removed redundant label 00110$
;	main.c:263: SCL=1;
;	genAssign
	setb	_P1_5
;	main.c:264: Delay();
;	genCall
	push	ar2
	lcall	_Delay
	pop	ar2
;	main.c:265: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:266: Delay();
;	genCall
	push	ar2
	lcall	_Delay
	pop	ar2
;	main.c:261: for (i=0;i<=8;i++)
;	genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00104$:
;	main.c:269: Start();
;	genCall
	lcall	_Start
;	main.c:270: Stop();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Stop
;
;------------------------------------------------------------
;Allocation info for local variables in function 'ack'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:273: int ack()
;	-----------------------------------------
;	 function ack
;	-----------------------------------------
_ack:
;	main.c:275: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:276: SDA=1;
;	genAssign
	setb	_P1_6
;	main.c:277: SCL=1;
;	genAssign
	setb	_P1_5
;	main.c:278: TH0=0xFF;
;	genAssign
	mov	_TH0,#0xFF
;	main.c:279: TL0=0xF6;
;	genAssign
	mov	_TL0,#0xF6
;	main.c:280: TR0 = 1;
;	genAssign
	setb	_TR0
;	main.c:281: while (TF0 == 0);
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	_TF0,00101$
;	Peephole 300	removed redundant label 00111$
;	main.c:290: return 0;
;	genIfx
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	_P1_6,00105$
;	Peephole 300	removed redundant label 00112$
;	main.c:285: TR0 = 0;
;	genAssign
	clr	_TR0
;	main.c:286: TF0 = 0;
;	genAssign
	clr	_TF0
;	main.c:287: return 1;
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0001
;	Peephole 112.b	changed ljmp to sjmp
;	main.c:290: return 0;
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
;	Peephole 237.a	removed sjmp to ret
	ret
00105$:
	mov	dptr,#0x0000
;	Peephole 300	removed redundant label 00106$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Sendnack'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:294: void Sendnack()
;	-----------------------------------------
;	 function Sendnack
;	-----------------------------------------
_Sendnack:
;	main.c:296: SCL=0;
;	genAssign
	clr	_P1_5
;	main.c:297: SDA=1;
;	genAssign
	setb	_P1_6
;	main.c:298: SCL=1;
;	genAssign
	setb	_P1_5
;	main.c:299: Delay();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Delay
;
;------------------------------------------------------------
;Allocation info for local variables in function 'SendAck'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:302: void SendAck()
;	-----------------------------------------
;	 function SendAck
;	-----------------------------------------
_SendAck:
;	main.c:304: SCL  = 0;
;	genAssign
	clr	_P1_5
;	main.c:305: SDA = 0;
;	genAssign
	clr	_P1_6
;	main.c:306: SCL = 1;
;	genAssign
	setb	_P1_5
;	main.c:307: Delay();
;	genCall
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_Delay
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:311: void Delay()
;	-----------------------------------------
;	 function Delay
;	-----------------------------------------
_Delay:
;	main.c:313: TMOD |= 0x01;           // Timer0 mode1
;	genOr
	orl	_TMOD,#0x01
;	main.c:314: TH0=0xFF;              //initial value for 10us
;	genAssign
	mov	_TH0,#0xFF
;	main.c:315: TL0=0xF6;
;	genAssign
	mov	_TL0,#0xF6
;	main.c:316: TR0 = 1;               // timer0 start
;	genAssign
	setb	_TR0
;	main.c:317: while (TF0 == 0);      // check overflow condition
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	_TF0,00101$
;	Peephole 300	removed redundant label 00108$
;	main.c:318: TR0 = 0;               // Stop Timer
;	genAssign
	clr	_TR0
;	main.c:319: TF0 = 0;               // Clear flag
;	genAssign
	clr	_TF0
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:322: void serial_init()
;	-----------------------------------------
;	 function serial_init
;	-----------------------------------------
_serial_init:
;	main.c:324: TMOD = 0X20;
;	genAssign
	mov	_TMOD,#0x20
;	main.c:325: SCON = 0X50;
;	genAssign
	mov	_SCON,#0x50
;	main.c:326: TH1 = 0XFD;
;	genAssign
	mov	_TH1,#0xFD
;	main.c:327: TR1 = 1;
;	genAssign
	setb	_TR1
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_1'
;------------------------------------------------------------
;	main.c:329: void putchar (char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	genReceive
	mov	a,dpl
	mov	dptr,#_putchar_c_1_1
	movx	@dptr,a
;	main.c:331: SBUF = c;    // load serial port with  transmit value
;	genAssign
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	_SBUF,a
;	main.c:332: while (!TI);
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	main.c:333: TI = 0;    // clear TI flag
;	genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_TI,00108$
	sjmp	00101$
00108$:
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getchar'
;------------------------------------------------------------
;r                         Allocated with name '_getchar_r_1_1'
;------------------------------------------------------------
;	main.c:335: char getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:338: while (!RI);
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	main.c:339: RI = 0;
;	genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	main.c:340: r = SBUF;  // clear RI flag
;	genAssign
	mov	r2,_SBUF
;	main.c:341: return r;    // return character from SBUF
;	genRet
	mov	dpl,r2
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num'
;------------------------------------------------------------
;val                       Allocated with name '_get_num_val_1_1'
;i                         Allocated with name '_get_num_i_1_1'
;val1                      Allocated with name '_get_num_val1_1_1'
;------------------------------------------------------------
;	main.c:346: int get_num()
;	-----------------------------------------
;	 function get_num
;	-----------------------------------------
_get_num:
;	main.c:349: unsigned int i=0;
;	genAssign
	mov	dptr,#_get_num_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:350: uint16_t val1=0;
;	genAssign
	mov	dptr,#_get_num_val1_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:351: while(1)
00116$:
;	main.c:353: val[i]=getchar();
;	genAssign
	mov	dptr,#_get_num_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	r4,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	r5,a
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_getchar
	mov	r6,dpl
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
	mov	a,r6
	movx	@dptr,a
;	main.c:354: if(val[i]=='\r')
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x0D,00113$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00149$
;	Peephole 300	removed redundant label 00150$
;	main.c:356: val[i]='\0';
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:357: putchar('\n');
;	genCall
	mov	dpl,#0x0A
	lcall	_putchar
;	main.c:358: putchar('\r');
;	genCall
	mov	dpl,#0x0D
	lcall	_putchar
;	main.c:359: break;
	ljmp	00147$
00113$:
;	main.c:361: else if(val[i]==0x7f)
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r6,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x7F,00110$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00151$
;	Peephole 300	removed redundant label 00152$
;	main.c:363: putchar(0x7f);
;	genCall
	mov	dpl,#0x7F
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;	main.c:364: i--;
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00153$
	dec	r3
00153$:
;	genAssign
	mov	dptr,#_get_num_i_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00110$:
;	main.c:366: else if((val[i]>='0'&&val[i]<='9')|| (val[i]>='a'&&val[i]<='f')||(val[i]>='A'&&val[i]<='F'))
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
;	genCmpLt
;	genCmp
	mov	r2,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00106$
;	Peephole 300	removed redundant label 00154$
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
	mov	r4,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00101$
;	Peephole 300	removed redundant label 00155$
00106$:
;	genAssign
	mov	dptr,#_get_num_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCmpLt
;	genCmp
	mov	r2,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xe1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00108$
;	Peephole 300	removed redundant label 00156$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x66 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00101$
;	Peephole 300	removed redundant label 00157$
00108$:
;	genAssign
	mov	dptr,#_get_num_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCmpLt
;	genCmp
	mov	r2,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xc1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00102$
;	Peephole 300	removed redundant label 00158$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x46 ^ 0x80)
	mov	b,r2
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00102$
;	Peephole 300	removed redundant label 00159$
00101$:
;	main.c:368: putchar(val[i]);
;	genAssign
	mov	dptr,#_get_num_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r4,a
;	Peephole 244.c	loading dpl from a instead of r4
	mov	dpl,a
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;	main.c:369: i+=1;
;	genPlus
	mov	dptr,#_get_num_i_1_1
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	movx	@dptr,a
;	Peephole 181	changed mov to clr
	clr	a
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
00102$:
;	main.c:372: putchar(val[i]);
;	genAssign
	mov	dptr,#_get_num_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
	lcall	_putchar
;	main.c:373: printf_tiny("not valid enter again \n\r");
;	genIpush
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:374: i=0;
;	genAssign
	mov	dptr,#_get_num_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
;	main.c:378: while(val[i]!='\0')
00147$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00129$:
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
;	genCmpEq
;	gencjneshort
	cjne	r4,#0x00,00160$
	ljmp	00131$
00160$:
;	main.c:380: if(val[i]>='0'&&val[i]<='9')
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00126$
;	Peephole 300	removed redundant label 00161$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00126$
;	Peephole 300	removed redundant label 00162$
;	main.c:382: val1 = (val1*16)+(val[i]-48);
;	genAssign
	mov	dptr,#_get_num_val1_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r6,a
;	Peephole 105	removed redundant mov
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
;	genCast
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
;	genMinus
	mov	a,r4
	add	a,#0xd0
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
;	genPlus
	mov	dptr,#_get_num_val1_1_1
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	movx	@dptr,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	inc	dptr
	movx	@dptr,a
	ljmp	00127$
00126$:
;	main.c:384: else if(val[i]>='A'&&val[i]<='F')
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_num_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCmpLt
;	genCmp
	mov	r4,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xc1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00122$
;	Peephole 300	removed redundant label 00163$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x46 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00122$
;	Peephole 300	removed redundant label 00164$
;	main.c:386: val1 = (val1*16)+(val[i]-55);
;	genAssign
	mov	dptr,#_get_num_val1_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r6,a
;	Peephole 105	removed redundant mov
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
;	genCast
;	peephole 177.h	optimized mov sequence
	mov	a,r4
;	Peephole 236.i	used r7 instead of ar7
	mov	r7,a
	rlc	a
	subb	a,acc
	mov	r0,a
;	genMinus
	mov	a,r7
	add	a,#0xc9
	mov	r7,a
	mov	a,r0
	addc	a,#0xff
	mov	r0,a
;	genPlus
	mov	dptr,#_get_num_val1_1_1
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	movx	@dptr,a
;	Peephole 236.g	used r0 instead of ar0
	mov	a,r0
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	inc	dptr
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00127$
00122$:
;	main.c:388: else if(val[i]>='a'&&val[i]<='f')
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r4
	xrl	a,#0x80
	subb	a,#0xe1
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
;	genCmpGt
;	genCmp
	jc	00127$
;	Peephole 300	removed redundant label 00165$
;	Peephole 256.a	removed redundant clr c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x66 ^ 0x80)
	mov	b,r4
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00127$
;	Peephole 300	removed redundant label 00166$
;	main.c:390: val1 = (val1*16)+(val[i]-87);
;	genAssign
	mov	dptr,#_get_num_val1_1_1
	movx	a,@dptr
	mov	r5,a
	inc	dptr
	movx	a,@dptr
;	genLeftShift
;	genLeftShiftLiteral
;	genlshTwo
	mov	r6,a
;	Peephole 105	removed redundant mov
	swap	a
	anl	a,#0xf0
	xch	a,r5
	swap	a
	xch	a,r5
	xrl	a,r5
	xch	a,r5
	anl	a,#0xf0
	xch	a,r5
	xrl	a,r5
	mov	r6,a
;	genCast
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r7,a
;	genMinus
	mov	a,r4
	add	a,#0xa9
	mov	r4,a
	mov	a,r7
	addc	a,#0xff
	mov	r7,a
;	genPlus
	mov	dptr,#_get_num_val1_1_1
;	Peephole 236.g	used r4 instead of ar4
	mov	a,r4
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	movx	@dptr,a
;	Peephole 236.g	used r7 instead of ar7
	mov	a,r7
;	Peephole 236.b	used r6 instead of ar6
	addc	a,r6
	inc	dptr
	movx	@dptr,a
00127$:
;	main.c:392: i++;
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00167$
	inc	r3
00167$:
	ljmp	00129$
00131$:
;	main.c:394: return val1;
;	genAssign
	mov	dptr,#_get_num_val1_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genRet
;	Peephole 234.b	loading dph directly from a(ccumulator), r3 not set
	mov	dpl,r2
	mov	dph,a
;	Peephole 300	removed redundant label 00132$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'External10_ISR'
;------------------------------------------------------------
;ctr                       Allocated with name '_External10_ISR_ctr_1_1'
;a                         Allocated with name '_External10_ISR_a_1_1'
;------------------------------------------------------------
;	main.c:398: void External10_ISR() interrupt 0 // checkking interrupt from IO expander
;	-----------------------------------------
;	 function External10_ISR
;	-----------------------------------------
_External10_ISR:
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+2)
	push	(0+3)
	push	(0+4)
	push	(0+5)
	push	(0+6)
	push	(0+7)
	push	(0+0)
	push	(0+1)
	push	psw
	mov	psw,#0x00
;	main.c:401: Start();
;	genCall
	lcall	_Start
;	main.c:402: write_i2c(0x41);
;	genCall
	mov	dpl,#0x41
	lcall	_write_i2c
;	main.c:403: a=ack();
;	genCall
	lcall	_ack
	mov	r2,dpl
	mov	r3,dph
;	genCast
;	main.c:404: if(a==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x01,00105$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00109$
;	Peephole 300	removed redundant label 00110$
;	main.c:406: ctr=read_i2c();
;	genCall
	lcall	_read_i2c
	mov	r2,dpl
;	main.c:407: Stop();
;	genCall
	push	ar2
	lcall	_Stop
	pop	ar2
;	main.c:408: ctr=((ctr^0x01)<<1)|0xFD;
;	genXor
	xrl	ar2,#0x01
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	a,r2
;	Peephole 254	optimized left shift
	add	a,r2
	mov	r2,a
;	genOr
	orl	ar2,#0xFD
;	main.c:409: Start();
;	genCall
	push	ar2
	lcall	_Start
	pop	ar2
;	main.c:410: write_i2c(0x40);
;	genCall
	mov	dpl,#0x40
	push	ar2
	lcall	_write_i2c
	pop	ar2
;	main.c:411: a=ack();
;	genCall
	push	ar2
	lcall	_ack
	mov	r3,dpl
	mov	r4,dph
	pop	ar2
;	genCast
;	main.c:412: if(a==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r3,#0x01,00105$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00111$
;	Peephole 300	removed redundant label 00112$
;	main.c:414: write_i2c(ctr);
;	genCall
	mov	dpl,r2
	lcall	_write_i2c
;	main.c:415: a=ack();
;	genCall
	lcall	_ack
;	main.c:416: Stop();
;	genCall
	lcall	_Stop
00105$:
	pop	psw
	pop	(0+1)
	pop	(0+0)
	pop	(0+7)
	pop	(0+6)
	pop	(0+5)
	pop	(0+4)
	pop	(0+3)
	pop	(0+2)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	reti
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.db 0x0A
	.db 0x0D
	.ascii "PLEASE ENTER AMONGST FOLLOWING OPTIONS (JUST PRESS OPTION "
	.ascii "NUMBER):--"
	.db 0x0A
	.db 0x0D
	.ascii "1>READ"
	.db 0x0A
	.db 0x0D
	.ascii "2>WRITE"
	.db 0x0A
	.db 0x0D
	.ascii "3>READ CONTINOUS"
	.db 0x0A
	.db 0x0D
	.ascii "4>RESET"
	.db 0x0A
	.db 0x0D
	.db 0x00
__str_1:
	.ascii "entered choice: "
	.db 0x00
__str_2:
	.db 0x0A
	.db 0x0D
	.ascii "enter read address"
	.db 0x00
__str_3:
	.ascii "invalid address , enter again "
	.db 0x00
__str_4:
	.db 0x0A
	.db 0x0D
	.ascii "enter address"
	.db 0x00
__str_5:
	.db 0x0A
	.db 0x0D
	.ascii "enter data"
	.db 0x00
__str_6:
	.ascii "data out of range, enter again "
	.db 0x00
__str_7:
	.db 0x0A
	.db 0x0D
	.ascii "enter strt address"
	.db 0x00
__str_8:
	.db 0x0A
	.db 0x0D
	.ascii "enter end address"
	.db 0x00
__str_9:
	.ascii "invalid!"
	.db 0x00
__str_10:
	.db 0x0A
	.db 0x0A
	.db 0x0D
	.ascii "PLEASE ENTER VALID OPTION!!"
	.db 0x0A
	.db 0x0A
	.db 0x0A
	.db 0x0A
	.db 0x0A
	.db 0x00
__str_11:
	.ascii "value is : %x "
	.db 0x00
__str_12:
	.ascii "%x:"
	.db 0x00
__str_13:
	.db 0x0A
	.db 0x0D
	.ascii " %x:"
	.db 0x00
__str_14:
	.ascii "  %x  "
	.db 0x00
__str_15:
	.ascii "not valid enter again "
	.db 0x0A
	.db 0x0D
	.db 0x00
	.area XINIT   (CODE)

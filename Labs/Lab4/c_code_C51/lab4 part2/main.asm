;--------------------------------------------------------
; File Created by SDCC : FreeWare ANSI-C Compiler
; Version 2.6.0 #4309 (Jul 28 2006)
; This file generated Sat Nov 10 21:22:39 2018
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-large
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _isr23
	.globl _main
	.globl __sdcc_external_startup
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
	.globl _mins0
	.globl _mins1
	.globl _secs0
	.globl _secs1
	.globl _hundrdmilli
	.globl _ctr
	.globl _lcdcreatechar_PARM_2
	.globl _lcdgotoxy_PARM_2
	.globl _Lcd_init
	.globl _lcdbusywait
	.globl _lcdgotoaddress
	.globl _lcdgotoxy
	.globl _lcdputch
	.globl _lcdclear
	.globl _lcdputstr
	.globl _Delay_5ms
	.globl _serial_init
	.globl _putchar
	.globl _getchar
	.globl _get_num
	.globl _get_str
	.globl _start_clock
	.globl _stop_clock
	.globl _reset_clock
	.globl _lcdcreatechar
	.globl _get_hex
	.globl _lcd_dump_ddram
	.globl _lcd_dump_cgram
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
_lcdcreatechar_sloc0_1_0:
	.ds 2
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
_main_f1_1_1:
	.ds 8
_lcdgotoaddress_addr_1_1:
	.ds 1
_lcdgotoxy_PARM_2:
	.ds 2
_lcdgotoxy_row_1_1:
	.ds 2
_lcdgotoxy_addr_1_1:
	.ds 1
_lcdputch_cc_1_1:
	.ds 1
_lcdputstr_ss_1_1:
	.ds 3
_lcdputstr_add_1_1:
	.ds 1
_putchar_c_1_1:
	.ds 1
_get_num_str_1_1:
	.ds 10
_get_num_i_1_1:
	.ds 2
_get_str_str_1_1:
	.ds 100
_get_str_i_1_1:
	.ds 2
_lcdcreatechar_PARM_2:
	.ds 3
_lcdcreatechar_ccode_1_1:
	.ds 1
_get_hex_val_1_1:
	.ds 10
_get_hex_i_1_1:
	.ds 2
_get_hex_val1_1_1:
	.ds 2
_lcd_dump_ddram_add_1_1:
	.ds 1
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
_ctr::
	.ds 1
_hundrdmilli::
	.ds 1
_secs1::
	.ds 1
_secs0::
	.ds 1
_mins1::
	.ds 1
_mins0::
	.ds 1
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
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	reti
	.ds	7
	ljmp	_isr23
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
;Allocation info for local variables in function '_sdcc_external_startup'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:38: _sdcc_external_startup()
;	-----------------------------------------
;	 function _sdcc_external_startup
;	-----------------------------------------
__sdcc_external_startup:
	ar2 = 0x02
	ar3 = 0x03
	ar4 = 0x04
	ar5 = 0x05
	ar6 = 0x06
	ar7 = 0x07
	ar0 = 0x00
	ar1 = 0x01
;	main.c:40: AUXR |= 0x0C;
;	genOr
	orl	_AUXR,#0x0C
;	main.c:41: AUXR &= 0xFD;
;	genAnd
	anl	_AUXR,#0xFD
;	main.c:42: return 0;
;	genRet
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x0000
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a                         Allocated with name '_main_a_1_1'
;b                         Allocated with name '_main_b_1_1'
;c                         Allocated with name '_main_c_1_1'
;d                         Allocated with name '_main_d_1_1'
;add1                      Allocated with name '_main_add1_1_1'
;e                         Allocated with name '_main_e_1_1'
;g                         Allocated with name '_main_g_1_1'
;f1                        Allocated with name '_main_f1_1_1'
;------------------------------------------------------------
;	main.c:46: void main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	main.c:53: start_clock();
;	genCall
	lcall	_start_clock
;	main.c:54: serial_init();
;	genCall
	lcall	_serial_init
;	main.c:55: Lcd_init();
;	genCall
	lcall	_Lcd_init
;	main.c:59: while(1)
00122$:
;	main.c:61: printf_tiny("options:\n\n\r1>Clear lcd\n\r2>goto row colomn\n\r3>enter string\n\r4>stop clock\n\r5>restart clock\n\r6>reset clock\n\r7>custom character input\n\r8>print custom characters\n\r9>Read contents of DDRAM\n\r10>read contents of cgram\n\r");
;	genIpush
	mov	a,#__str_0
	push	acc
	mov	a,#(__str_0 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:62: printf_tiny("\n\renter option number:");
;	genIpush
	mov	a,#__str_1
	push	acc
	mov	a,#(__str_1 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:63: a=get_num();
;	genCall
	lcall	_get_num
	mov	r2,dpl
	mov	r3,dph
;	main.c:65: if(a==1)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x01,00102$
	cjne	r3,#0x00,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00137$
;	Peephole 300	removed redundant label 00138$
;	main.c:67: lcdclear(); //calling function to clear lcd
;	genCall
	push	ar2
	push	ar3
	lcall	_lcdclear
	pop	ar3
	pop	ar2
00102$:
;	main.c:69: if(a==2)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x02,00104$
	cjne	r3,#0x00,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00139$
;	Peephole 300	removed redundant label 00140$
;	main.c:71: printf_tiny("enter row ");
;	genIpush
	push	ar2
	push	ar3
	mov	a,#__str_2
	push	acc
	mov	a,#(__str_2 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	main.c:72: b=get_num();
;	genCall
	push	ar2
	push	ar3
	lcall	_get_num
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	main.c:73: printf_tiny("enter column");
;	genIpush
	push	ar2
	push	ar3
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
	pop	ar3
	pop	ar2
;	main.c:74: c=get_num();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_num
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:75: lcdgotoxy(b,c); // taking values to print on  particular row and column in lcd
;	genAssign
	mov	dptr,#_lcdgotoxy_PARM_2
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	genCall
	mov	dpl,r4
	mov	dph,r5
	push	ar2
	push	ar3
	lcall	_lcdgotoxy
	pop	ar3
	pop	ar2
00104$:
;	main.c:78: if(a==3)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x03,00106$
	cjne	r3,#0x00,00106$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00141$
;	Peephole 300	removed redundant label 00142$
;	main.c:80: printf_tiny("enter string");
;	genIpush
	push	ar2
	push	ar3
	mov	a,#__str_4
	push	acc
	mov	a,#(__str_4 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	main.c:81: d=get_str();
;	genCall
	push	ar2
	push	ar3
	lcall	_get_str
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	pop	ar3
	pop	ar2
;	main.c:82: lcdputstr(d);// printing a string on the lcd
;	genCall
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	push	ar2
	push	ar3
	lcall	_lcdputstr
	pop	ar3
	pop	ar2
00106$:
;	main.c:84: if(a==4)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x04,00108$
	cjne	r3,#0x00,00108$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00143$
;	Peephole 300	removed redundant label 00144$
;	main.c:86: stop_clock(); // stopping the timer
;	genCall
	push	ar2
	push	ar3
	lcall	_stop_clock
	pop	ar3
	pop	ar2
00108$:
;	main.c:88: if(a==5)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x05,00110$
	cjne	r3,#0x00,00110$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00145$
;	Peephole 300	removed redundant label 00146$
;	main.c:90: TR2=1; // restart the timer
;	genAssign
	setb	_TR2
00110$:
;	main.c:92: if(a==6)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x06,00112$
	cjne	r3,#0x00,00112$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00147$
;	Peephole 300	removed redundant label 00148$
;	main.c:94: reset_clock();// reset
;	genCall
	push	ar2
	push	ar3
	lcall	_reset_clock
	pop	ar3
	pop	ar2
00112$:
;	main.c:96: if(a==7)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x07,00149$
	cjne	r3,#0x00,00149$
	sjmp	00150$
00149$:
	ljmp	00114$
00150$:
;	main.c:99: add1= *read_cmd & 0x7f; // reading the address and storing
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xC000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r4,a
;	genAnd
	anl	ar4,#0x7F
;	main.c:100: printf_tiny("enter chracter code");
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:101: e=get_hex();// taking character code as input from user
;	genCall
	push	ar2
	push	ar3
	push	ar4
	lcall	_get_hex
	mov	r5,dpl
	mov	r6,dph
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	main.c:102: printf_tiny("enter row1 value")  ; // taking values for all rows from user
;	genIpush
	push	ar2
	push	ar3
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
	pop	ar3
	pop	ar2
;	main.c:103: f1[0]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#_main_f1_1_1
	mov	a,r6
	movx	@dptr,a
;	main.c:104: printf_tiny("enter row2 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_7
	push	acc
	mov	a,#(__str_7 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:105: f1[1]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0001)
	mov	a,r6
	movx	@dptr,a
;	main.c:106: printf_tiny("enter row3 value")  ;
;	genIpush
	push	ar2
	push	ar3
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
	pop	ar3
	pop	ar2
;	main.c:107: f1[2]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0002)
	mov	a,r6
	movx	@dptr,a
;	main.c:108: printf_tiny("enter row4 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_9
	push	acc
	mov	a,#(__str_9 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:109: f1[3]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0003)
	mov	a,r6
	movx	@dptr,a
;	main.c:110: printf_tiny("enter row5 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_10
	push	acc
	mov	a,#(__str_10 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:111: f1[4]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0004)
	mov	a,r6
	movx	@dptr,a
;	main.c:112: printf_tiny("enter row6 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_11
	push	acc
	mov	a,#(__str_11 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:113: f1[5]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0005)
	mov	a,r6
	movx	@dptr,a
;	main.c:114: printf_tiny("enter row7 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_12
	push	acc
	mov	a,#(__str_12 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:115: f1[6]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0006)
	mov	a,r6
	movx	@dptr,a
;	main.c:116: printf_tiny("enter row8 value")  ;
;	genIpush
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	a,#__str_13
	push	acc
	mov	a,#(__str_13 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:117: f1[7]=get_hex();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	lcall	_get_hex
	mov	r6,dpl
	mov	r7,dph
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	genCast
;	genPointerSet
;     genFarPointerSet
	mov	dptr,#(_main_f1_1_1 + 0x0007)
	mov	a,r6
	movx	@dptr,a
;	main.c:118: lcdcreatechar(e,f1);
;	genCast
	mov	dptr,#_lcdcreatechar_PARM_2
	mov	a,#_main_f1_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,#(_main_f1_1_1 >> 8)
	movx	@dptr,a
	inc	dptr
	mov	a,#0x0
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdcreatechar
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:119: lcdgotoaddress(add1);// go the adress stored
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_lcdgotoaddress
	pop	ar3
	pop	ar2
00114$:
;	main.c:122: if(a==8)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x08,00116$
	cjne	r3,#0x00,00116$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00151$
;	Peephole 300	removed redundant label 00152$
;	main.c:124: printf_tiny("enter chracter code");
;	genIpush
	push	ar2
	push	ar3
	mov	a,#__str_5
	push	acc
	mov	a,#(__str_5 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
	pop	ar3
	pop	ar2
;	main.c:125: g=get_hex();
;	genCall
	push	ar2
	push	ar3
	lcall	_get_hex
	mov	r4,dpl
	mov	r5,dph
	pop	ar3
	pop	ar2
;	genCast
;	main.c:126: lcdputch(g) ;
;	genCall
	mov	dpl,r4
	push	ar2
	push	ar3
	lcall	_lcdputch
	pop	ar3
	pop	ar2
00116$:
;	main.c:128: if(a==9)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x09,00118$
	cjne	r3,#0x00,00118$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00153$
;	Peephole 300	removed redundant label 00154$
;	main.c:130: lcd_dump_ddram(); // dumping the contents of ddram
;	genCall
	push	ar2
	push	ar3
	lcall	_lcd_dump_ddram
	pop	ar3
	pop	ar2
00118$:
;	main.c:132: if(a==10)
;	genCmpEq
;	gencjneshort
	cjne	r2,#0x0A,00155$
	cjne	r3,#0x00,00155$
	sjmp	00156$
00155$:
	ljmp	00122$
00156$:
;	main.c:134: lcd_dump_cgram();// dumping contents of cgram
;	genCall
	lcall	_lcd_dump_cgram
	ljmp	00122$
;	Peephole 259.b	removed redundant label 00124$ and ret
;
;------------------------------------------------------------
;Allocation info for local variables in function 'Lcd_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:141: void Lcd_init() // initilising the lcd
;	-----------------------------------------
;	 function Lcd_init
;	-----------------------------------------
_Lcd_init:
;	main.c:143: Delay_5ms();
;	genCall
	lcall	_Delay_5ms
;	main.c:144: Delay_5ms();
;	genCall
	lcall	_Delay_5ms
;	main.c:145: Delay_5ms(); // delay of 15ms
;	genCall
	lcall	_Delay_5ms
;	main.c:146: *write_cmd = 0x38; //function set for lcd
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x38
	movx	@dptr,a
;	main.c:147: Delay_5ms();
;	genCall
	lcall	_Delay_5ms
;	main.c:148: *write_cmd = 0x38;
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x38
	movx	@dptr,a
;	main.c:149: Delay_5ms();
;	genCall
	lcall	_Delay_5ms
;	main.c:150: *write_cmd = 0x38;
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x38
	movx	@dptr,a
;	main.c:151: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:152: *write_cmd = 0x0E; //
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x0E
	movx	@dptr,a
;	main.c:153: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:154: *write_cmd = 0x01;// clear ddisplay command
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x01
	movx	@dptr,a
;	main.c:155: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:156: *write_cmd = 0x06; // entry mode set
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x06
	movx	@dptr,a
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdbusywait'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:160: void lcdbusywait()
;	-----------------------------------------
;	 function lcdbusywait
;	-----------------------------------------
_lcdbusywait:
;	main.c:162: while(*read_cmd & 0x80); // checking the busy flag
00101$:
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xC000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genAnd
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.e	removed ljmp by inverse jump logic
	jb	acc.7,00101$
;	Peephole 300	removed redundant label 00107$
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoaddress'
;------------------------------------------------------------
;addr                      Allocated with name '_lcdgotoaddress_addr_1_1'
;------------------------------------------------------------
;	main.c:166: void lcdgotoaddress(uint8_t addr)
;	-----------------------------------------
;	 function lcdgotoaddress
;	-----------------------------------------
_lcdgotoaddress:
;	genReceive
	mov	a,dpl
	mov	dptr,#_lcdgotoaddress_addr_1_1
	movx	@dptr,a
;	main.c:168: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:169: *write_cmd = 0x80|addr; // taking address from user
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x80
;	genAssign
	mov	dptr,#_lcdgotoaddress_addr_1_1
	movx	a,@dptr
	mov	r4,a
;	genOr
	orl	ar4,#0x80
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdgotoxy'
;------------------------------------------------------------
;column                    Allocated with name '_lcdgotoxy_PARM_2'
;row                       Allocated with name '_lcdgotoxy_row_1_1'
;addr                      Allocated with name '_lcdgotoxy_addr_1_1'
;------------------------------------------------------------
;	main.c:172: void lcdgotoxy(unsigned int row, unsigned int column)// going to a particular row and column in the lcd
;	-----------------------------------------
;	 function lcdgotoxy
;	-----------------------------------------
_lcdgotoxy:
;	genReceive
	mov	r2,dph
	mov	a,dpl
	mov	dptr,#_lcdgotoxy_row_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	main.c:173: {   uint8_t addr=0;
;	genAssign
	mov	dptr,#_lcdgotoxy_addr_1_1
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:174: if(row==0 )  // going to a particular column in the 0th row
;	genAssign
	mov	dptr,#_lcdgotoxy_row_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
;	genIfx
	mov	r3,a
;	Peephole 135	removed redundant mov
	orl	a,r2
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00118$
;	main.c:176: addr=0x00+column;
;	genAssign
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCast
	mov	dptr,#_lcdgotoxy_addr_1_1
	mov	a,r4
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00110$:
;	main.c:178: else if (row==1) //going to a particular column in the 1st row
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x01,00107$
	cjne	r3,#0x00,00107$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00119$
;	Peephole 300	removed redundant label 00120$
;	main.c:180: addr=0x40+column;
;	genAssign
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCast
;	genPlus
	mov	dptr,#_lcdgotoxy_addr_1_1
;     genPlusIncr
	mov	a,#0x40
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00107$:
;	main.c:182: else if(row==2) //going to a particular column in the 2nd row
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x02,00104$
	cjne	r3,#0x00,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00121$
;	Peephole 300	removed redundant label 00122$
;	main.c:184: addr=0x10+column;
;	genAssign
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r4,a
	inc	dptr
	movx	a,@dptr
	mov	r5,a
;	genCast
;	genPlus
	mov	dptr,#_lcdgotoxy_addr_1_1
;     genPlusIncr
	mov	a,#0x10
;	Peephole 236.a	used r4 instead of ar4
	add	a,r4
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00104$:
;	main.c:186: else if(row==3) //going to a particular column in the 3rd row
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.a	optimized misc jump sequence
	cjne	r2,#0x03,00111$
	cjne	r3,#0x00,00111$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00123$
;	Peephole 300	removed redundant label 00124$
;	main.c:188: addr=0x50+column;
;	genAssign
	mov	dptr,#_lcdgotoxy_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genCast
;	genPlus
	mov	dptr,#_lcdgotoxy_addr_1_1
;     genPlusIncr
	mov	a,#0x50
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	movx	@dptr,a
00111$:
;	main.c:190: lcdgotoaddress(addr);
;	genAssign
	mov	dptr,#_lcdgotoxy_addr_1_1
	movx	a,@dptr
;	genCall
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_lcdgotoaddress
;
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputch'
;------------------------------------------------------------
;cc                        Allocated with name '_lcdputch_cc_1_1'
;------------------------------------------------------------
;	main.c:193: void lcdputch(char cc) // writing chracter in lcd
;	-----------------------------------------
;	 function lcdputch
;	-----------------------------------------
_lcdputch:
;	genReceive
	mov	a,dpl
	mov	dptr,#_lcdputch_cc_1_1
	movx	@dptr,a
;	main.c:195: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:196: *write_data=cc;
;	genAssign
	mov	r2,#0x00
	mov	r3,#0xA0
;	genAssign
	mov	dptr,#_lcdputch_cc_1_1
	movx	a,@dptr
;	genPointerSet
;     genFarPointerSet
	mov	r4,a
	mov	dpl,r2
	mov	dph,r3
;	Peephole 136	removed redundant move
	movx	@dptr,a
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdclear'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:199: void lcdclear()
;	-----------------------------------------
;	 function lcdclear
;	-----------------------------------------
_lcdclear:
;	main.c:201: *write_cmd = 0x01; // comand for clearing the lcd display
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genPointerSet
;     genFarPointerSet
	mov	a,#0x01
	movx	@dptr,a
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdputstr'
;------------------------------------------------------------
;ss                        Allocated with name '_lcdputstr_ss_1_1'
;add                       Allocated with name '_lcdputstr_add_1_1'
;------------------------------------------------------------
;	main.c:204: void lcdputstr(char *ss) // function for writing string in the lcd
;	-----------------------------------------
;	 function lcdputstr
;	-----------------------------------------
_lcdputstr:
;	genReceive
	mov	r2,b
	mov	r3,dph
	mov	a,dpl
	mov	dptr,#_lcdputstr_ss_1_1
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r2
	movx	@dptr,a
;	main.c:206: add= *read_cmd & 0x7f; // reading address
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xC000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	genAnd
	mov	dptr,#_lcdputstr_add_1_1
	mov	a,#0x7F
	anl	a,r2
	movx	@dptr,a
;	main.c:207: while(*ss != '\0') // checking null character has been entered
;	genAssign
	mov	dptr,#_lcdputstr_ss_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
00115$:
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
;	genCmpEq
;	gencjneshort
	cjne	r5,#0x00,00128$
	ljmp	00127$
00128$:
;	main.c:209: lcdbusywait();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdbusywait
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:210: lcdputch(*(ss++));
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	lcall	__gptrget
	mov	r5,a
	inc	dptr
	mov	r2,dpl
	mov	r3,dph
;	genAssign
	mov	dptr,#_lcdputstr_ss_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	genCall
	mov	dpl,r5
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdputch
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:212: if (add%16==15) // lcd roll over condition
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	movx	a,@dptr
	mov	r5,a
;	genAnd
	mov	a,#0x0F
	anl	a,r5
	mov	r6,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x0F,00113$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00129$
;	Peephole 300	removed redundant label 00130$
;	main.c:214: add=add&0xf0;
;	genAnd
	mov	dptr,#_lcdputstr_add_1_1
	mov	a,#0xF0
	anl	a,r5
	movx	@dptr,a
;	main.c:215: if (add==0x00)
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	movx	a,@dptr
;	genIfx
	mov	r6,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00131$
;	main.c:218: add=(0x40);
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	mov	a,#0x40
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00110$:
;	main.c:220: else if (add == 0x40)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x40,00107$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00132$
;	Peephole 300	removed redundant label 00133$
;	main.c:222: add=(0x10);
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	mov	a,#0x10
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00107$:
;	main.c:224: else if (add == 0x10)
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x10,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00134$
;	Peephole 300	removed redundant label 00135$
;	main.c:226: add=(0x50);
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	mov	a,#0x50
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00111$
00104$:
;	main.c:228: else if (add == 0x50 )
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x50,00111$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00136$
;	Peephole 300	removed redundant label 00137$
;	main.c:230: add=(0x00);
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
00111$:
;	main.c:233: lcdgotoaddress(add);
;	genAssign
	mov	dptr,#_lcdputstr_add_1_1
	movx	a,@dptr
;	genCall
	mov	r6,a
;	Peephole 244.c	loading dpl from a instead of r6
	mov	dpl,a
	push	ar2
	push	ar3
	push	ar4
	lcall	_lcdgotoaddress
	pop	ar4
	pop	ar3
	pop	ar2
	ljmp	00115$
00113$:
;	main.c:237: add++;
;	genPlus
	mov	dptr,#_lcdputstr_add_1_1
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r5 instead of ar5
	add	a,r5
	movx	@dptr,a
	ljmp	00115$
00127$:
;	genAssign
	mov	dptr,#_lcdputstr_ss_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
	inc	dptr
	mov	a,r4
	movx	@dptr,a
;	Peephole 300	removed redundant label 00118$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_5ms'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:246: void Delay_5ms()
;	-----------------------------------------
;	 function Delay_5ms
;	-----------------------------------------
_Delay_5ms:
;	main.c:248: TMOD |= 0x01;           // Timer0 mode1
;	genOr
	orl	_TMOD,#0x01
;	main.c:249: TH0=0xFF;              //initial value for 5ms
;	genAssign
	mov	_TH0,#0xFF
;	main.c:250: TL0=0xF6;
;	genAssign
	mov	_TL0,#0xF6
;	main.c:251: TR0 = 1;               // timer0 start
;	genAssign
	setb	_TR0
;	main.c:252: while (TF0 == 0);      // check overflow condition
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
	jnb	_TF0,00101$
;	Peephole 300	removed redundant label 00108$
;	main.c:253: TR0 = 0;               // Stop Timer
;	genAssign
	clr	_TR0
;	main.c:254: TF0 = 0;               // Clear flag
;	genAssign
	clr	_TF0
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'serial_init'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:257: void serial_init()
;	-----------------------------------------
;	 function serial_init
;	-----------------------------------------
_serial_init:
;	main.c:259: TMOD = 0X20;
;	genAssign
	mov	_TMOD,#0x20
;	main.c:260: SCON = 0X50;
;	genAssign
	mov	_SCON,#0x50
;	main.c:261: TH1 = 0XFD;
;	genAssign
	mov	_TH1,#0xFD
;	main.c:262: TR1 = 1;
;	genAssign
	setb	_TR1
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'putchar'
;------------------------------------------------------------
;c                         Allocated with name '_putchar_c_1_1'
;------------------------------------------------------------
;	main.c:264: void putchar (char c)
;	-----------------------------------------
;	 function putchar
;	-----------------------------------------
_putchar:
;	genReceive
	mov	a,dpl
	mov	dptr,#_putchar_c_1_1
	movx	@dptr,a
;	main.c:266: SBUF = c;    // load serial port with  transmit value
;	genAssign
	mov	dptr,#_putchar_c_1_1
	movx	a,@dptr
	mov	_SBUF,a
;	main.c:267: while (!TI);
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	main.c:268: TI = 0;    // clear TI flag
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
;	main.c:270: char getchar ()
;	-----------------------------------------
;	 function getchar
;	-----------------------------------------
_getchar:
;	main.c:273: while (!RI);
00101$:
;	genIfx
;	genIfxJump
;	Peephole 108.d	removed ljmp by inverse jump logic
;	main.c:274: RI = 0;
;	genAssign
;	Peephole 250.a	using atomic test and clear
	jbc	_RI,00108$
	sjmp	00101$
00108$:
;	main.c:275: r = SBUF;  // clear RI flag
;	genAssign
	mov	r2,_SBUF
;	main.c:276: return r;    // return character from SBUF
;	genRet
	mov	dpl,r2
;	Peephole 300	removed redundant label 00104$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_num'
;------------------------------------------------------------
;str                       Allocated with name '_get_num_str_1_1'
;i                         Allocated with name '_get_num_i_1_1'
;------------------------------------------------------------
;	main.c:279: int get_num()
;	-----------------------------------------
;	 function get_num
;	-----------------------------------------
_get_num:
;	main.c:282: unsigned int i=0;
;	genAssign
	mov	dptr,#_get_num_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:283: while(1)
00112$:
;	main.c:285: str[i]=getchar();
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
	add	a,#_get_num_str_1_1
	mov	r4,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_str_1_1 >> 8)
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
;	main.c:286: if(str[i]=='\r')
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x0D,00109$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00121$
;	Peephole 300	removed redundant label 00122$
;	main.c:288: str[i]='\0';
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:289: putchar('\n');
;	genCall
	mov	dpl,#0x0A
	lcall	_putchar
;	main.c:290: putchar('\r');
;	genCall
	mov	dpl,#0x0D
	lcall	_putchar
;	main.c:291: break;
	ljmp	00113$
00109$:
;	main.c:293: else if(str[i]==0x7f)
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
	cjne	r6,#0x7F,00106$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00123$
;	Peephole 300	removed redundant label 00124$
;	main.c:295: putchar(0x7f);
;	genCall
	mov	dpl,#0x7F
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;	main.c:296: i--;
;	genMinus
;	genMinusDec
	mov	a,r2
	add	a,#0xff
	mov	r6,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
;	genAssign
	mov	dptr,#_get_num_i_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00112$
00106$:
;	main.c:298: else if(str[i]>='0'&&str[1]<='9')
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
	movx	a,@dptr
;	genCmpLt
;	genCmp
	mov	r6,a
	clr	c
;	Peephole 106	removed redundant mov
	xrl	a,#0x80
	subb	a,#0xb0
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00102$
;	Peephole 300	removed redundant label 00125$
;	genPointerGet
;	genFarPointerGet
	mov	dptr,#(_get_num_str_1_1 + 0x0001)
	movx	a,@dptr
	mov	r6,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r6
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00102$
;	Peephole 300	removed redundant label 00126$
;	main.c:300: putchar(str[i]);
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
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
;	main.c:301: i+=1;
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
	ljmp	00112$
00102$:
;	main.c:304: putchar(str[i]);
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
	add	a,#_get_num_str_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_num_str_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
	lcall	_putchar
;	main.c:305: printf_tiny("not valid enter again \n\r");
;	genIpush
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:306: i=0;
;	genAssign
	mov	dptr,#_get_num_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00112$
00113$:
;	main.c:309: return atoi(str);
;	genCall
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_get_num_str_1_1
	mov	b,#0x00
;	genRet
;	Peephole 150.b	removed misc moves via dph, dpl before return
;	Peephole 253.b	replaced lcall/ret with ljmp
	ljmp	_atoi
;
;------------------------------------------------------------
;Allocation info for local variables in function 'get_str'
;------------------------------------------------------------
;str                       Allocated with name '_get_str_str_1_1'
;i                         Allocated with name '_get_str_i_1_1'
;------------------------------------------------------------
;	main.c:316: char* get_str()
;	-----------------------------------------
;	 function get_str
;	-----------------------------------------
_get_str:
;	main.c:319: unsigned int i=0;
;	genAssign
	mov	dptr,#_get_str_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:320: while(1)
00108$:
;	main.c:322: str[i]=getchar();
;	genAssign
	mov	dptr,#_get_str_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_str_str_1_1
	mov	r4,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_str_str_1_1 >> 8)
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
;	main.c:323: if(str[i]=='\r')
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x0D,00105$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00115$
;	Peephole 300	removed redundant label 00116$
;	main.c:325: str[i]='\0';
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:326: putchar('\n');
;	genCall
	mov	dpl,#0x0A
	lcall	_putchar
;	main.c:327: putchar('\r');
;	genCall
	mov	dpl,#0x0D
	lcall	_putchar
;	main.c:328: break;
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00109$
00105$:
;	main.c:330: else if(str[i]==0x7f)
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
	cjne	r6,#0x7F,00102$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00117$
;	Peephole 300	removed redundant label 00118$
;	main.c:332: putchar(0x7f);
;	genCall
	mov	dpl,#0x7F
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;	main.c:333: i--;
;	genMinus
;	genMinusDec
	mov	a,r2
	add	a,#0xff
	mov	r6,a
	mov	a,r3
	addc	a,#0xff
	mov	r7,a
;	genAssign
	mov	dptr,#_get_str_i_1_1
	mov	a,r6
	movx	@dptr,a
	inc	dptr
	mov	a,r7
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00108$
00102$:
;	main.c:336: {putchar(str[i]);
;	genPointerGet
;	genFarPointerGet
	mov	dpl,r4
	mov	dph,r5
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
;	main.c:337: i+=1;
;	genPlus
	mov	dptr,#_get_str_i_1_1
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
	ljmp	00108$
00109$:
;	main.c:341: return str;
;	genRet
;	Peephole 182.a	used 16 bit load of DPTR
	mov	dptr,#_get_str_str_1_1
	mov	b,#0x00
;	Peephole 300	removed redundant label 00110$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'start_clock'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:344: void start_clock()
;	-----------------------------------------
;	 function start_clock
;	-----------------------------------------
_start_clock:
;	main.c:346: IEN0=0xA0;     // enabling timer 2 interrrupt
;	genAssign
	mov	_IEN0,#0xA0
;	main.c:347: T2CON=0x00;    // timer 2 control register set
;	genAssign
	mov	_T2CON,#0x00
;	main.c:348: T2MOD=0x00;   // timer 2  mode register set
;	genAssign
	mov	_T2MOD,#0x00
;	main.c:349: RCAP2H=0x4C;    // timer 2 set for 50 milliseconds
;	genAssign
	mov	_RCAP2H,#0x4C
;	main.c:350: RCAP2L=0x00;
;	genAssign
	mov	_RCAP2L,#0x00
;	main.c:351: TR2=1;       // starting timer 2
;	genAssign
	setb	_TR2
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'stop_clock'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:354: void stop_clock()
;	-----------------------------------------
;	 function stop_clock
;	-----------------------------------------
_stop_clock:
;	main.c:356: TF2=0;
;	genAssign
	clr	_TF2
;	main.c:357: TR2=0;
;	genAssign
	clr	_TR2
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'reset_clock'
;------------------------------------------------------------
;------------------------------------------------------------
;	main.c:360: void reset_clock()
;	-----------------------------------------
;	 function reset_clock
;	-----------------------------------------
_reset_clock:
;	main.c:362: TR2=0;         //STOP TIMER 1
;	genAssign
	clr	_TR2
;	main.c:363: TH2=0X4C;      //reload count
;	genAssign
	mov	_TH2,#0x4C
;	main.c:364: TL2=0X00;
;	genAssign
	mov	_TL2,#0x00
;	main.c:365: hundrdmilli='0';  //clear all variables
;	genAssign
	mov	dptr,#_hundrdmilli
	mov	a,#0x30
	movx	@dptr,a
;	main.c:366: secs0='0';
;	genAssign
	mov	dptr,#_secs0
	mov	a,#0x30
	movx	@dptr,a
;	main.c:367: secs1='0';
;	genAssign
	mov	dptr,#_secs1
	mov	a,#0x30
	movx	@dptr,a
;	main.c:368: mins0='0';
;	genAssign
	mov	dptr,#_mins0
	mov	a,#0x30
	movx	@dptr,a
;	main.c:369: mins1='0';
;	genAssign
	mov	dptr,#_mins1
	mov	a,#0x30
	movx	@dptr,a
;	main.c:370: ctr=0;
;	genAssign
	mov	dptr,#_ctr
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:371: TR2=1;          //restart timer
;	genAssign
	setb	_TR2
;	Peephole 300	removed redundant label 00101$
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'isr23'
;------------------------------------------------------------
;add                       Allocated with name '_isr23_add_1_1'
;------------------------------------------------------------
;	main.c:374: void isr23() __interrupt(5) // when timer 2 overflows enter the ISR
;	-----------------------------------------
;	 function isr23
;	-----------------------------------------
_isr23:
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
;	main.c:376: TF2=0; // clear timer flag
;	genAssign
	clr	_TF2
;	main.c:377: if(ctr==0)
;	genAssign
	mov	dptr,#_ctr
	movx	a,@dptr
;	genIfx
	mov	r2,a
;	Peephole 105	removed redundant mov
;	genIfxJump
;	Peephole 108.b	removed ljmp by inverse jump logic
	jnz	00110$
;	Peephole 300	removed redundant label 00119$
;	main.c:379: ctr=1;
;	genAssign
	mov	dptr,#_ctr
	mov	a,#0x01
	movx	@dptr,a
	ljmp	00112$
00110$:
;	main.c:383: add= *read_cmd & 0x7f; // storing address
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xC000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	genAnd
	anl	ar2,#0x7F
;	main.c:384: ctr=0;
;	genAssign
	mov	dptr,#_ctr
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:385: hundrdmilli++;
;	genPlus
	mov	dptr,#_hundrdmilli
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:386: if(hundrdmilli>'9') //if milliseconds exceeds 9 then reset variable to 0
;	genAssign
	mov	dptr,#_hundrdmilli
	movx	a,@dptr
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00120$
;	main.c:388: hundrdmilli='0';
;	genAssign
	mov	dptr,#_hundrdmilli
	mov	a,#0x30
	movx	@dptr,a
;	main.c:389: secs0++;
;	genPlus
	mov	dptr,#_secs0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:390: if(secs0>'9') // if the second digit of seconds variable is 9 set it to 0 and increment the value of  seconds 1 variable
;	genAssign
	mov	dptr,#_secs0
	movx	a,@dptr
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00121$
;	main.c:392: secs0='0';
;	genAssign
	mov	dptr,#_secs0
	mov	a,#0x30
	movx	@dptr,a
;	main.c:393: secs1++;
;	genPlus
	mov	dptr,#_secs1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:394: if(secs1>'5')
;	genAssign
	mov	dptr,#_secs1
	movx	a,@dptr
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x35 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00122$
;	main.c:396: secs1='0';
;	genAssign
	mov	dptr,#_secs1
	mov	a,#0x30
	movx	@dptr,a
;	main.c:397: mins0++;
;	genPlus
	mov	dptr,#_mins0
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
;	main.c:398: if(mins0>'9')
;	genAssign
	mov	dptr,#_mins0
	movx	a,@dptr
	mov	r3,a
;	genCmpGt
;	genCmp
	clr	c
;	Peephole 159	avoided xrl during execution
	mov	a,#(0x39 ^ 0x80)
	mov	b,r3
	xrl	b,#0x80
	subb	a,b
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00108$
;	Peephole 300	removed redundant label 00123$
;	main.c:400: mins0='0';
;	genAssign
	mov	dptr,#_mins0
	mov	a,#0x30
	movx	@dptr,a
;	main.c:401: mins1++;
;	genPlus
	mov	dptr,#_mins1
	movx	a,@dptr
	add	a,#0x01
	movx	@dptr,a
00108$:
;	main.c:407: lcdgotoaddress(0x59);
;	genCall
	mov	dpl,#0x59
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:408: lcdputch(mins1);
;	genAssign
	mov	dptr,#_mins1
	movx	a,@dptr
;	genCall
	mov	r3,a
;	Peephole 244.c	loading dpl from a instead of r3
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:409: lcdgotoaddress(0x5A);
;	genCall
	mov	dpl,#0x5A
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:410: lcdputch(mins0);
;	genAssign
	mov	dptr,#_mins0
	movx	a,@dptr
;	genCall
	mov	r3,a
;	Peephole 244.c	loading dpl from a instead of r3
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:411: lcdgotoaddress(0x5B);
;	genCall
	mov	dpl,#0x5B
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:412: lcdputch(':');
;	genCall
	mov	dpl,#0x3A
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:413: lcdgotoaddress(0x5C);
;	genCall
	mov	dpl,#0x5C
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:414: lcdputch(secs1);
;	genAssign
	mov	dptr,#_secs1
	movx	a,@dptr
;	genCall
	mov	r3,a
;	Peephole 244.c	loading dpl from a instead of r3
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:415: lcdgotoaddress(0x5D);
;	genCall
	mov	dpl,#0x5D
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:416: lcdputch(secs0);
;	genAssign
	mov	dptr,#_secs0
	movx	a,@dptr
;	genCall
	mov	r3,a
;	Peephole 244.c	loading dpl from a instead of r3
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:417: lcdgotoaddress(0x5E);
;	genCall
	mov	dpl,#0x5E
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:418: lcdputch(':');
;	genCall
	mov	dpl,#0x3A
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:419: lcdgotoaddress(0x5F);
;	genCall
	mov	dpl,#0x5F
	push	ar2
	lcall	_lcdgotoaddress
	pop	ar2
;	main.c:420: lcdputch(hundrdmilli);
;	genAssign
	mov	dptr,#_hundrdmilli
	movx	a,@dptr
;	genCall
	mov	r3,a
;	Peephole 244.c	loading dpl from a instead of r3
	mov	dpl,a
	push	ar2
	lcall	_lcdputch
	pop	ar2
;	main.c:421: lcdgotoaddress(add);
;	genCall
	mov	dpl,r2
	lcall	_lcdgotoaddress
00112$:
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
;------------------------------------------------------------
;Allocation info for local variables in function 'lcdcreatechar'
;------------------------------------------------------------
;sloc0                     Allocated with name '_lcdcreatechar_sloc0_1_0'
;row_vals                  Allocated with name '_lcdcreatechar_PARM_2'
;ccode                     Allocated with name '_lcdcreatechar_ccode_1_1'
;i                         Allocated with name '_lcdcreatechar_i_1_1'
;------------------------------------------------------------
;	main.c:425: void lcdcreatechar(unsigned char ccode, unsigned char row_vals[8])
;	-----------------------------------------
;	 function lcdcreatechar
;	-----------------------------------------
_lcdcreatechar:
;	genReceive
	mov	a,dpl
	mov	dptr,#_lcdcreatechar_ccode_1_1
	movx	@dptr,a
;	main.c:430: *write_cmd = 0x40|((ccode&0x07)<<3);
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x80
;	genAssign
	mov	dptr,#_lcdcreatechar_ccode_1_1
	movx	a,@dptr
;	genAnd
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
;	Peephole 139.a	removed redundant mov
	anl	a,#0x07
	mov	r4,a
	swap	a
	rr	a
	anl	a,#0xf8
	mov	r4,a
;	genOr
	orl	ar4,#0x40
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r2
	mov	dph,r3
	mov	a,r4
	movx	@dptr,a
;	main.c:431: for(i=0;i<8;i++)
;	genAssign
	mov	dptr,#_lcdcreatechar_PARM_2
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
	inc	dptr
	movx	a,@dptr
	mov	r4,a
;	genAssign
	mov	r5,#0x00
	mov	r6,#0x00
00101$:
;	genCmpLt
;	genCmp
	clr	c
	mov	a,r5
	subb	a,#0x08
	mov	a,r6
	xrl	a,#0x80
	subb	a,#0x80
;	genIfxJump
;	Peephole 108.a	removed ljmp by inverse jump logic
	jnc	00105$
;	Peephole 300	removed redundant label 00110$
;	main.c:433: lcdbusywait();
;	genCall
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	lcall	_lcdbusywait
	pop	ar6
	pop	ar5
	pop	ar4
	pop	ar3
	pop	ar2
;	main.c:434: *write_data = (row_vals[i])&0x1f;
;	genAssign
	mov	_lcdcreatechar_sloc0_1_0,#0x00
	mov	(_lcdcreatechar_sloc0_1_0 + 1),#0xA0
;	genPlus
;	Peephole 236.g	used r5 instead of ar5
	mov	a,r5
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	mov	r1,a
;	Peephole 236.g	used r6 instead of ar6
	mov	a,r6
;	Peephole 236.b	used r3 instead of ar3
	addc	a,r3
	mov	r7,a
	mov	ar0,r4
;	genPointerGet
;	genGenPointerGet
	mov	dpl,r1
	mov	dph,r7
	mov	b,r0
	lcall	__gptrget
	mov	r1,a
;	genAnd
	anl	ar1,#0x1F
;	genPointerSet
;     genFarPointerSet
	mov	dpl,_lcdcreatechar_sloc0_1_0
	mov	dph,(_lcdcreatechar_sloc0_1_0 + 1)
	mov	a,r1
	movx	@dptr,a
;	main.c:431: for(i=0;i<8;i++)
;	genPlus
;     genPlusIncr
;	tail increment optimized (range 9)
	inc	r5
	cjne	r5,#0x00,00101$
	inc	r6
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00101$
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'get_hex'
;------------------------------------------------------------
;val                       Allocated with name '_get_hex_val_1_1'
;i                         Allocated with name '_get_hex_i_1_1'
;val1                      Allocated with name '_get_hex_val1_1_1'
;------------------------------------------------------------
;	main.c:439: int get_hex()
;	-----------------------------------------
;	 function get_hex
;	-----------------------------------------
_get_hex:
;	main.c:442: unsigned int i=0;
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:443: uint16_t val1=0;
;	genAssign
	mov	dptr,#_get_hex_val1_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
;	main.c:444: while(1)
00116$:
;	main.c:446: val[i]=getchar();
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	r4,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
;	main.c:447: if(val[i]=='\r')
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r6,#0x0D,00113$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00149$
;	Peephole 300	removed redundant label 00150$
;	main.c:449: val[i]='\0';
;	genPointerSet
;     genFarPointerSet
	mov	dpl,r4
	mov	dph,r5
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:450: putchar('\n');
;	genCall
	mov	dpl,#0x0A
	lcall	_putchar
;	main.c:451: putchar('\r');
;	genCall
	mov	dpl,#0x0D
	lcall	_putchar
;	main.c:452: break;
	ljmp	00147$
00113$:
;	main.c:454: else if(val[i]==0x7f)
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
;	main.c:456: putchar(0x7f);
;	genCall
	mov	dpl,#0x7F
	push	ar2
	push	ar3
	lcall	_putchar
	pop	ar3
	pop	ar2
;	main.c:457: i--;
;	genMinus
;	genMinusDec
	dec	r2
	cjne	r2,#0xff,00153$
	dec	r3
00153$:
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	mov	a,r2
	movx	@dptr,a
	inc	dptr
	mov	a,r3
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00116$
00110$:
;	main.c:459: else if((val[i]>='0'&&val[i]<='9')|| (val[i]>='a'&&val[i]<='f')||(val[i]>='A'&&val[i]<='F'))
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
	mov	dptr,#_get_hex_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
	mov	dptr,#_get_hex_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
;	main.c:461: putchar(val[i]);
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
;	main.c:462: i+=1;
;	genPlus
	mov	dptr,#_get_hex_i_1_1
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
;	main.c:465: putchar(val[i]);
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	movx	a,@dptr
	mov	r2,a
	inc	dptr
	movx	a,@dptr
	mov	r3,a
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
	mov	dph,a
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
;	genCall
	mov	r2,a
;	Peephole 244.c	loading dpl from a instead of r2
	mov	dpl,a
	lcall	_putchar
;	main.c:466: printf_tiny("not valid enter again \n\r");
;	genIpush
	mov	a,#__str_14
	push	acc
	mov	a,#(__str_14 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	dec	sp
	dec	sp
;	main.c:467: i=0;
;	genAssign
	mov	dptr,#_get_hex_i_1_1
	clr	a
	movx	@dptr,a
	inc	dptr
	movx	@dptr,a
	ljmp	00116$
;	main.c:471: while(val[i]!='\0')
00147$:
;	genAssign
	mov	r2,#0x00
	mov	r3,#0x00
00129$:
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
;	main.c:473: if(val[i]>='0'&&val[i]<='9')
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
;	main.c:475: val1 = (val1*16)+(val[i]-48);
;	genAssign
	mov	dptr,#_get_hex_val1_1_1
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
	mov	dptr,#_get_hex_val1_1_1
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
;	main.c:477: else if(val[i]>='A'&&val[i]<='F')
;	genPlus
;	Peephole 236.g	used r2 instead of ar2
	mov	a,r2
	add	a,#_get_hex_val_1_1
	mov	dpl,a
;	Peephole 236.g	used r3 instead of ar3
	mov	a,r3
	addc	a,#(_get_hex_val_1_1 >> 8)
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
;	main.c:479: val1 = (val1*16)+(val[i]-55);
;	genAssign
	mov	dptr,#_get_hex_val1_1_1
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
	mov	dptr,#_get_hex_val1_1_1
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
;	main.c:481: else if(val[i]>='a'&&val[i]<='f')
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
;	main.c:483: val1 = (val1*16)+(val[i]-87);
;	genAssign
	mov	dptr,#_get_hex_val1_1_1
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
	mov	dptr,#_get_hex_val1_1_1
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
;	main.c:485: i++;
;	genPlus
;     genPlusIncr
	inc	r2
	cjne	r2,#0x00,00167$
	inc	r3
00167$:
	ljmp	00129$
00131$:
;	main.c:487: return val1;
;	genAssign
	mov	dptr,#_get_hex_val1_1_1
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
;Allocation info for local variables in function 'lcd_dump_ddram'
;------------------------------------------------------------
;add                       Allocated with name '_lcd_dump_ddram_add_1_1'
;------------------------------------------------------------
;	main.c:492: void lcd_dump_ddram()
;	-----------------------------------------
;	 function lcd_dump_ddram
;	-----------------------------------------
_lcd_dump_ddram:
;	main.c:493: {    uint8_t add=0;
;	genAssign
	mov	dptr,#_lcd_dump_ddram_add_1_1
;	Peephole 181	changed mov to clr
	clr	a
	movx	@dptr,a
;	main.c:494: *write_cmd = 0x80;
;	genAssign
	mov	dpl,#0x00
;	genPointerSet
;     genFarPointerSet
;	peephole 177.h	optimized mov sequence
	mov	a,#0x80
	mov	dph,a
	movx	@dptr,a
;	main.c:496: while(add<=0x5f)
00106$:
;	genAssign
	mov	dptr,#_lcd_dump_ddram_add_1_1
	movx	a,@dptr
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov  r2,a
;	Peephole 177.a	removed redundant mov
	add	a,#0xff - 0x5F
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00109$
;	Peephole 300	removed redundant label 00115$
;	main.c:498: if(add%16==0)
;	genAnd
	mov	a,r2
	anl	a,#0x0F
;	Peephole 160.c	removed sjmp by inverse jump logic
	jz	00117$
;	Peephole 300	removed redundant label 00116$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00117$:
;	main.c:500: printf_tiny(" \n\r %x\t ",add);
;	genCast
	mov	r3,#0x00
;	genIpush
	push	ar2
	push	ar3
;	genIpush
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
00102$:
;	main.c:502: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:503: printf_tiny(" %x ",*read_data);
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xE000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r2,a
;	genCast
	mov	r3,#0x00
;	genIpush
	push	ar2
	push	ar3
;	genIpush
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
;	main.c:504: if (add==0x1f)
;	genAssign
	mov	dptr,#_lcd_dump_ddram_add_1_1
	movx	a,@dptr
	mov	r2,a
;	genCmpEq
;	gencjneshort
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 198.b	optimized misc jump sequence
	cjne	r2,#0x1F,00104$
;	Peephole 200.b	removed redundant sjmp
;	Peephole 300	removed redundant label 00118$
;	Peephole 300	removed redundant label 00119$
;	main.c:506: lcdbusywait();
;	genCall
	lcall	_lcdbusywait
;	main.c:507: lcdgotoaddress(0x40);
;	genCall
	mov	dpl,#0x40
	lcall	_lcdgotoaddress
;	main.c:508: add=0x40;
;	genAssign
	mov	dptr,#_lcd_dump_ddram_add_1_1
	mov	a,#0x40
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00104$:
;	main.c:512: add++;
;	genPlus
	mov	dptr,#_lcd_dump_ddram_add_1_1
;     genPlusIncr
	mov	a,#0x01
;	Peephole 236.a	used r2 instead of ar2
	add	a,r2
	movx	@dptr,a
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00106$
00109$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'lcd_dump_cgram'
;------------------------------------------------------------
;add                       Allocated with name '_lcd_dump_cgram_add_1_1'
;------------------------------------------------------------
;	main.c:519: void lcd_dump_cgram() // reading and printing contents of cgram
;	-----------------------------------------
;	 function lcd_dump_cgram
;	-----------------------------------------
_lcd_dump_cgram:
;	main.c:523: while(add<=64)
;	genAssign
	mov	r2,#0x00
00103$:
;	genCmpGt
;	genCmp
;	genIfxJump
;	Peephole 132.b	optimized genCmpGt by inverse logic (acc differs)
	mov	a,r2
	add	a,#0xff - 0x40
;	Peephole 112.b	changed ljmp to sjmp
;	Peephole 160.a	removed sjmp by inverse jump logic
	jc	00106$
;	Peephole 300	removed redundant label 00112$
;	main.c:525: if(add%8==0)
;	genAnd
	mov	a,r2
	anl	a,#0x07
;	Peephole 160.c	removed sjmp by inverse jump logic
	jz	00114$
;	Peephole 300	removed redundant label 00113$
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00102$
00114$:
;	main.c:527: printf_tiny(" \n\r %x\t ",add);
;	genCast
	mov	ar3,r2
	mov	r4,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	mov	a,#__str_15
	push	acc
	mov	a,#(__str_15 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
;	main.c:528: lcdbusywait();
;	genCall
	push	ar2
	lcall	_lcdbusywait
	pop	ar2
;	main.c:529: *write_cmd=0x40|((add/8)<<3);
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0x8000
;	genRightShift
;	genRightShiftLiteral
;	genrshOne
	mov	a,r2
	swap	a
	rl	a
	anl	a,#0x1f
;	genLeftShift
;	genLeftShiftLiteral
;	genlshOne
	mov	r3,a
;	Peephole 105	removed redundant mov
	swap	a
	rr	a
	anl	a,#0xf8
;	genOr
;	genPointerSet
;     genFarPointerSet
;	Peephole 139.b	removed redundant mov
	orl	a,#0x40
	mov	r3,a 
	movx	@dptr,a
00102$:
;	main.c:532: lcdbusywait();
;	genCall
	push	ar2
	lcall	_lcdbusywait
	pop	ar2
;	main.c:533: printf_tiny(" %x ",*read_data);
;	genAssign
;	Peephole 182.b	used 16 bit load of dptr
	mov	dptr,#0xE000
;	genPointerGet
;	genFarPointerGet
	movx	a,@dptr
	mov	r3,a
;	genCast
	mov	r4,#0x00
;	genIpush
	push	ar2
	push	ar3
	push	ar4
;	genIpush
	mov	a,#__str_16
	push	acc
	mov	a,#(__str_16 >> 8)
	push	acc
;	genCall
	lcall	_printf_tiny
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
;	main.c:534: add++;
;	genPlus
;     genPlusIncr
	inc	r2
;	Peephole 112.b	changed ljmp to sjmp
	sjmp	00103$
00106$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
__str_0:
	.ascii "options:"
	.db 0x0A
	.db 0x0A
	.db 0x0D
	.ascii "1>Clear lcd"
	.db 0x0A
	.db 0x0D
	.ascii "2>goto row colomn"
	.db 0x0A
	.db 0x0D
	.ascii "3>enter string"
	.db 0x0A
	.db 0x0D
	.ascii "4"
	.ascii ">stop clock"
	.db 0x0A
	.db 0x0D
	.ascii "5>restart clock"
	.db 0x0A
	.db 0x0D
	.ascii "6>reset clock"
	.db 0x0A
	.db 0x0D
	.ascii "7>custom charac"
	.ascii "ter input"
	.db 0x0A
	.db 0x0D
	.ascii "8>print custom characters"
	.db 0x0A
	.db 0x0D
	.ascii "9>Read contents of DDR"
	.ascii "AM"
	.db 0x0A
	.db 0x0D
	.ascii "10>read contents of cgram"
	.db 0x0A
	.db 0x0D
	.db 0x00
__str_1:
	.db 0x0A
	.db 0x0D
	.ascii "enter option number:"
	.db 0x00
__str_2:
	.ascii "enter row "
	.db 0x00
__str_3:
	.ascii "enter column"
	.db 0x00
__str_4:
	.ascii "enter string"
	.db 0x00
__str_5:
	.ascii "enter chracter code"
	.db 0x00
__str_6:
	.ascii "enter row1 value"
	.db 0x00
__str_7:
	.ascii "enter row2 value"
	.db 0x00
__str_8:
	.ascii "enter row3 value"
	.db 0x00
__str_9:
	.ascii "enter row4 value"
	.db 0x00
__str_10:
	.ascii "enter row5 value"
	.db 0x00
__str_11:
	.ascii "enter row6 value"
	.db 0x00
__str_12:
	.ascii "enter row7 value"
	.db 0x00
__str_13:
	.ascii "enter row8 value"
	.db 0x00
__str_14:
	.ascii "not valid enter again "
	.db 0x0A
	.db 0x0D
	.db 0x00
__str_15:
	.ascii " "
	.db 0x0A
	.db 0x0D
	.ascii " %x"
	.db 0x09
	.ascii " "
	.db 0x00
__str_16:
	.ascii " %x "
	.db 0x00
	.area XINIT   (CODE)
__xinit__ctr:
	.db #0x00
__xinit__hundrdmilli:
	.db #0x30
__xinit__secs1:
	.db #0x30
__xinit__secs0:
	.db #0x30
__xinit__mins1:
	.db #0x30
__xinit__mins0:
	.db #0x30

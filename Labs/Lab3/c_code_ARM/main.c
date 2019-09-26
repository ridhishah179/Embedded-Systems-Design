/* --COPYRIGHT--,BSD_EX
 * Copyright (c) 2014, Texas Instruments Incorporated
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *
 * *  Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *
 * *  Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * *  Neither the name of Texas Instruments Incorporated nor the names of
 *    its contributors may be used to endorse or promote products derived
 *    from this software without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
 * OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR
 * OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 *
 *******************************************************************************
 *
 *                       MSP432 CODE EXAMPLE DISCLAIMER
 *
 * MSP432 code examples are self-contained low-level programs that typically
 * demonstrate a single peripheral function or device feature in a highly
 * concise manner. For this the code may rely on the device's power-on default
 * register values and settings such as the clock configuration and care must
 * be taken when combining code from several examples to avoid potential side
 * effects. Also see http://www.ti.com/tool/mspdriverlib for an API functional
 * library & https://dev.ti.com/pinmux/ for a GUI approach to peripheral configuration.
 *
 * --/COPYRIGHT--*/
//******************************************************************************
//   MSP432P401 Demo - eUSCI_A0 UART echo at 9600 baud using BRCLK = 12MHz
//
//  Description: This demo echoes back characters received via a PC serial port.
//  SMCLK/ DCO is used as a clock source and the device is put in LPM0
//  The auto-clock enable feature is used by the eUSCI and SMCLK is turned off
//  when the UART is idle and turned on when a receive edge is detected.
//  Note that level shifter hardware is needed to shift between RS232 and MSP
//  voltage levels.
//
//  The example code shows proper initialization of registers
//  and interrupts to receive and transmit data.
//
//                MSP432P401
//             -----------------
//         /|\|                 |
//          | |                 |
//          --|RST              |
//            |                 |
//            |                 |
//            |     P1.3/UCA0TXD|----> PC (echo)
//            |     P1.2/UCA0RXD|<---- PC
//            |                 |
//
//   William Goh
//   Texas Instruments Inc.
//   June 2016 (updated) | June 2014 (created)
//   Built with CCSv6.1, IAR, Keil, GCC
//******************************************************************************
#include "msp.h"
#include "stdio.h"
#include "stdlib.h"
void myputchar (char c);
char mygetchar ();
int get_num();
void myputstr(char *s);
void pwm();

// Variables to store the ADC temperature reference calibration value
          int32_t adcRefTempCal_1_2v_30;
          int32_t adcRefTempCal_1_2v_85;
          volatile float temp;
          float IntDegF;
           float IntDegC;
           void print_float(float a);


int main(void)
{
    WDT_A->CTL = WDT_A_CTL_PW |             // Stop watchdog timer
            WDT_A_CTL_HOLD;
    // Configure UART pins
       P1->SEL0 |= BIT2 | BIT3;                // set 2-UART pin as secondary function

       // Configure UART
       EUSCI_A0->CTLW0 |= EUSCI_A_CTLW0_SWRST; // Put eUSCI in reset
       EUSCI_A0->CTLW0 = EUSCI_A_CTLW0_SWRST | // Remain eUSCI in reset
               EUSCI_B_CTLW0_SSEL__SMCLK;      // Configure eUSCI clock source for SMCLK
       // Baud Rate calculation
       // 12000000/(16*9600) = 78.125
       // Fractional portion = 0.125
       // User's Guide Table 21-4: UCBRSx = 0x10
       // UCBRFx = int ( (78.125-78)*16) = 2
       EUSCI_A0->BRW = 19;                     // 12000000/16/9600
       EUSCI_A0->MCTLW =(0XAA << EUSCI_A_MCTLW_BRS_OFS)|(8 << EUSCI_A_MCTLW_BRF_OFS) |EUSCI_A_MCTLW_OS16;

       EUSCI_A0->CTLW0 &= ~EUSCI_A_CTLW0_SWRST; // Initialize eUSCI
       EUSCI_A0->IFG &= ~EUSCI_A_IFG_RXIFG;    // Clear eUSCI RX interrupt flagd
       //EUSCI_A0->IE |= EUSCI_A_IE_RXIE;        // Enable USCI_A0 RX interrupt

       //volatile long temp;
       //volatile float IntDegF;
       //volatile float IntDegC;




           WDT_A->CTL = WDT_A_CTL_PW |             // Stop WDT
                        WDT_A_CTL_HOLD;

           // Read the ADC temperature reference calibration value
           adcRefTempCal_1_2v_30 = TLV->ADC14_REF1P2V_TS30C;
           adcRefTempCal_1_2v_85 = TLV->ADC14_REF1P2V_TS85C;

           // Initialize the shared reference module
           // By default, REFMSTR=1 => REFCTL is used to configure the internal reference
           while(REF_A->CTL0 & REF_A_CTL0_GENBUSY);// If ref generator busy, WAIT
           REF_A->CTL0 |= REF_A_CTL0_VSEL_0 |      // Enable internal 1.2V reference
                   REF_A_CTL0_ON;                  // Turn reference on

           REF_A->CTL0 &= ~REF_A_CTL0_TCOFF;       // Enable temperature sensor

           // Configure ADC - Pulse sample mode; ADC14_CTL0_SC trigger
           ADC14->CTL0 |= ADC14_CTL0_SHT0_6 |      // ADC ON,temperature sample period>5us
                   ADC14_CTL0_ON |
                   ADC14_CTL0_SHP;
           ADC14->CTL1 |= ADC14_CTL1_TCMAP;        // Enable internal temperature sensor
           ADC14->MCTL[0] = ADC14_MCTLN_VRSEL_1 |  // ADC input ch A22 => temp sense
                   ADC14_MCTLN_INCH_22;
           ADC14->IER0 = 0x0001;                   // ADC_IFG upon conv result-ADCMEM0

           // Wait for reference generator to settle
           while(!(REF_A->CTL0 & REF_A_CTL0_GENRDY));

           ADC14->CTL0 |= ADC14_CTL0_ENC;

           // Enable global interrupt
           __enable_irq();

           NVIC->ISER[0] = 1 << ((ADC14_IRQn) & 31);// Enable ADC interrupt in NVIC module


       // Enable eUSCIA0 interrupt in NVIC module
       //NVIC->ISER[0] = 1 << ((EUSCIA0_IRQn) & 31);
       NVIC->ISER[0] |= 1 << ((TA1_N_IRQn) & 31);
    char a,var ;
    int c,d,e;
    pwm();

    while(1)
    {
      myputstr( "\n\renter character");
      a=mygetchar();

    switch(a)
    {
    case 'd':
    {
                myputstr("\n\renter duty cycle percentage for R ");
                c=get_num();
                TIMER_A1->CCR[1] = ((c/100)*3000);
                myputstr("\n\renter duty cycle percentage for G ");
                d=get_num();
                TIMER_A1->CCR[2] = ((d/100)*3000);
                myputstr("\n\renter duty cycle percentage for B ");
                 e=get_num();
                TIMER_A1->CCR[3] = ((e/100)*3000);
    }
    break;

    case 'p':
    {
            myputstr("\n\r");
           var=(TIMER_A1->CCR[4]);
           printeger(var);
    }
    break;
    case 't':
    {



                ADC14->CTL0 |= ADC14_CTL0_SC;       // Sampling and conversion start


    }
break;





    }}}

//UART interrupt service routine
void EUSCIA0_IRQHandler(void)
{
    char c;
    if (EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG)
    {
        // Check if the TX buffer is empty first
        c=mygetchar();
        //myputchar(c);

        // Echo the received character back
        //EUSCI_A0->TXBUF = EUSCI_A0->RXBUF;
    }

}
void pwm()
{
    P2->DIR |= (BIT0|BIT1|BIT2) ;           // P7.6~7 set TA1.1~2
 //  P2->SEL0 |= BIT0;
//P2->SEL1 &= ~BIT0;
    P7->DIR |= BIT6 ;                 // P7.6~7 set TA1.1~2
        P7->SEL0 |= BIT6 ;
        P7->SEL1 &= ~(BIT6 );

TIMER_A1->CCR[0] = 3000 - 1;            // PWM Period
TIMER_A1->CCTL[1] = TIMER_A_CCTLN_CCIE;//TIMER_A_CCTLN_OUTMOD_7; // CCR1 reset/set
TIMER_A1->CCR[1] = 200;                 // CCR1 PWM duty cycle
TIMER_A1->CCTL[4] = TIMER_A_CCTLN_OUTMOD_7; // CCR2 reset/set
TIMER_A1->CCR[4] = 600;                 // CCR2 PWM duty cycle
TIMER_A1->CCTL[2] = TIMER_A_CCTLN_CCIE;//TIMER_A_CCTLN_OUTMOD_7; // CCR1 reset/set
TIMER_A1->CCR[2] = 700;
TIMER_A1->CCTL[3] = TIMER_A_CCTLN_CCIE;//TIMER_A_CCTLN_OUTMOD_7; // CCR1 reset/set
TIMER_A1->CCR[3] = 800;

TIMER_A1->CTL = TIMER_A_CTL_SSEL__SMCLK | // SMCLK
        TIMER_A_CTL_MC__UP |            // Up mode
        TIMER_A_CTL_CLR | TIMER_A_CTL_IE;                // Clear TAR


}
void TA1_N_IRQHandler(void)
{
    if(TIMER_A1->CCTL[1] & TIMER_A_CCTLN_CCIFG)
    {
        TIMER_A1->CCTL[1]&= ~TIMER_A_CCTLN_CCIFG;
        P2->OUT &= ~BIT0;
    }
    if(TIMER_A1->CCTL[2] & TIMER_A_CCTLN_CCIFG)
        {
            TIMER_A1->CCTL[2]&= ~TIMER_A_CCTLN_CCIFG;
            P2->OUT &= ~BIT1;
        }
    if(TIMER_A1->CCTL[3] & TIMER_A_CCTLN_CCIFG)
        {
            TIMER_A1->CCTL[3]&= ~TIMER_A_CCTLN_CCIFG;
            P2->OUT &= ~BIT2;
        }

    if(TIMER_A1->CTL & TIMER_A_CTL_IFG)
       {
           TIMER_A1->CTL&= ~TIMER_A_CTL_IFG;
           P2->OUT |= (BIT0|BIT1|BIT2);
       }
    if(TIMER_A1->CCTL[4] & TIMER_A_CCTLN_CCIFG)
            {
                TIMER_A1->CCTL[4]&= ~TIMER_A_CCTLN_CCIFG;
                P7->OUT &= ~BIT6;
            }

}
void ADC14_IRQHandler(void)
{int fc;
    if (ADC14->IFGR0 & ADC14_IFGR0_IFG0)
    {
        temp = ADC14->MEM[0];
        // Temperature in Celsius
                        // The temperature (Temp, C)=
                        IntDegC = (((float) temp - adcRefTempCal_1_2v_30) * (85 - 30)) /
                                (adcRefTempCal_1_2v_85 - adcRefTempCal_1_2v_30) + 30.0f;

                        // Temperature in Fahrenheit
                        // Tf = (9/5)*Tc | 32
                        IntDegF = ((9 * IntDegC) / 5) + 32;

                myputstr("\n\renter the unit of temperature ");
                fc=mygetchar();
                if (fc=='c')
                {
                        print_float(IntDegC);
                }
                else if (fc=='f')
        {
                    print_float(IntDegF);
        }

    }
}

void myputchar (char c)
{
    EUSCI_A0->TXBUF = c;
    while(!(EUSCI_A0->IFG & EUSCI_A_IFG_TXIFG));
    EUSCI_A0->IFG &= ~EUSCI_A_IFG_TXIFG;


}

void printeger(uint16_t a)
{
    uint8_t l=5, val=0;
uint16_t div=10000;
while(l!=0)
{
    if(a/div ||val==1)
    {
        val=l;
        myputchar(0x30 + (a/div));
    }
    a=a%div;
    div/=10;
    l-=1;
    }
}

void print_float(float f )
{
    uint8_t i=2;
printeger((uint16_t)f);
myputchar('.');
while(i!=0)
{f=f-(uint16_t)f;
f *=10;
myputchar(0x30 + (uint16_t)f);
i-=1;
}
}

void myputstr(char *s)
{

    while(*s){
        myputchar(*s++);
}}

char mygetchar ()
{
    char r;
    while(!(EUSCI_A0->IFG & EUSCI_A_IFG_RXIFG));
    r = EUSCI_A0->RXBUF ;
    //myputchar(r);
    return r;
}


int get_num()
{
char str[10];
unsigned int i=0;
while(1)
{
 str[i]=mygetchar();
 if(str[i]=='\r')
{
str[i]='\0';

myputchar('\n');
myputchar('\r');
break;
}
else
{
myputchar(str[i]);
i+=1;
}
}
return atoi(str);
}

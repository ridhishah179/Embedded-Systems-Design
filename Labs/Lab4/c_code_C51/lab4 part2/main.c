#include <mcs51/at89c51ed2.h>
#include <stdio.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdint.h>

#define write_cmd (( volatile __xdata uint8_t*) 0x8000) //A13 and A14 are used as pins for RS and RW RS=0 , RW=0; thus address is 8000
#define read_cmd (( volatile __xdata uint8_t*) 0xC000) // RS=0 RW=1
#define write_data (( volatile __xdata uint8_t*) 0xA000)//RS=1 RW=0
#define read_data (( volatile __xdata uint8_t*) 0xE000)//RS=1 RS=1

volatile char ctr=0;
volatile char hundrdmilli='0',secs1='0',secs0='0',mins1='0',mins0='0';
void Delay_5ms();
void serial_init();
char* get_str();
void Lcd_init();
void lcdbusywait();
void lcdclear();
void lcdgotoaddress(uint8_t addr);
void lcdcreatechar(unsigned char ccode, unsigned char row_vals[8]);
void lcdputstr(char *ss);
void lcdgotoxy(unsigned int row, unsigned int column);
void lcdputch(char cc);
void reset_clock();
void stop_clock();
void start_clock();
void lcd_dump_ddram();
void lcd_dump_cgram();
int get_num();
int get_hex();






_sdcc_external_startup()
{
  AUXR |= 0x0C;
  AUXR &= 0xFD;
return 0;
}


void main()
{
int a,b,c;
char *d;
uint8_t add1;
unsigned char e,g;
unsigned char f1[8];
start_clock();
serial_init();
Lcd_init();



while(1)
{
printf_tiny("options:\n\n\r1>Clear lcd\n\r2>goto row colomn\n\r3>enter string\n\r4>stop clock\n\r5>restart clock\n\r6>reset clock\n\r7>custom character input\n\r8>print custom characters\n\r9>Read contents of DDRAM\n\r10>read contents of cgram\n\r");
printf_tiny("\n\renter option number:");
a=get_num();
// giving options to user to perform the functions
if(a==1)
{
  lcdclear(); //calling function to clear lcd
}
if(a==2)
{
    printf_tiny("enter row ");
    b=get_num();
    printf_tiny("enter column");
    c=get_num();
    lcdgotoxy(b,c); // taking values to print on  particular row and column in lcd

}
if(a==3)
{
    printf_tiny("enter string");
    d=get_str();
    lcdputstr(d);// printing a string on the lcd
}
if(a==4)
{
stop_clock(); // stopping the timer
}
if(a==5)
{
TR2=1; // restart the timer
}
if(a==6)
{
reset_clock();// reset
}
if(a==7)
 {

 add1= *read_cmd & 0x7f; // reading the address and storing
  printf_tiny("enter chracter code");
  e=get_hex();// taking character code as input from user
  printf_tiny("enter row1 value")  ; // taking values for all rows from user
  f1[0]=get_hex();
   printf_tiny("enter row2 value")  ;
  f1[1]=get_hex();
   printf_tiny("enter row3 value")  ;
  f1[2]=get_hex();
   printf_tiny("enter row4 value")  ;
  f1[3]=get_hex();
   printf_tiny("enter row5 value")  ;
  f1[4]=get_hex();
   printf_tiny("enter row6 value")  ;
  f1[5]=get_hex();
   printf_tiny("enter row7 value")  ;
  f1[6]=get_hex();
   printf_tiny("enter row8 value")  ;
  f1[7]=get_hex();
  lcdcreatechar(e,f1);
  lcdgotoaddress(add1);// go the adress stored

}
if(a==8)
{
  printf_tiny("enter chracter code");
  g=get_hex();
  lcdputch(g) ;
}
if(a==9)
{
lcd_dump_ddram(); // dumping the contents of ddram
}
if(a==10)
{
lcd_dump_cgram();// dumping contents of cgram
}
}
}



void Lcd_init() // initilising the lcd
{
    Delay_5ms();
     Delay_5ms();
     Delay_5ms(); // delay of 15ms
    *write_cmd = 0x38; //function set for lcd
     Delay_5ms();
    *write_cmd = 0x38;
     Delay_5ms();
    *write_cmd = 0x38;
    lcdbusywait();
    *write_cmd = 0x0E; //
    lcdbusywait();
    *write_cmd = 0x01;// clear ddisplay command
    lcdbusywait();
    *write_cmd = 0x06; // entry mode set

}

void lcdbusywait()
{
    while(*read_cmd & 0x80); // checking the busy flag
}


void lcdgotoaddress(uint8_t addr)
{
    lcdbusywait();
    *write_cmd = 0x80|addr; // taking address from user
}

void lcdgotoxy(unsigned int row, unsigned int column)// going to a particular row and column in the lcd
{   uint8_t addr=0;
    if(row==0 )  // going to a particular column in the 0th row
    {
        addr=0x00+column;
    }
    else if (row==1) //going to a particular column in the 1st row
    {
        addr=0x40+column;
    }
    else if(row==2) //going to a particular column in the 2nd row
    {
        addr=0x10+column;
    }
    else if(row==3) //going to a particular column in the 3rd row
    {
        addr=0x50+column;
    }
    lcdgotoaddress(addr);
}

void lcdputch(char cc) // writing chracter in lcd
{
    lcdbusywait();
    *write_data=cc;
}

void lcdclear()
{
    *write_cmd = 0x01; // comand for clearing the lcd display
}

void lcdputstr(char *ss) // function for writing string in the lcd
{    uint8_t add;
      add= *read_cmd & 0x7f; // reading address
     while(*ss != '\0') // checking null character has been entered
     {
         lcdbusywait();
         lcdputch(*(ss++));

         if (add%16==15) // lcd roll over condition
         {
             add=add&0xf0;
             if (add==0x00)
             {

                add=(0x40);
             }
             else if (add == 0x40)
             {
                   add=(0x10);
             }
             else if (add == 0x10)
             {
                add=(0x50);
             }
            else if (add == 0x50 )
            {
                add=(0x00);
            }

        lcdgotoaddress(add);
         }
         else
         {
          add++;
         }

     }


}


void Delay_5ms()
{
    TMOD |= 0x01;           // Timer0 mode1
    TH0=0xFF;              //initial value for 5ms
    TL0=0xF6;
    TR0 = 1;               // timer0 start
    while (TF0 == 0);      // check overflow condition
    TR0 = 0;               // Stop Timer
    TF0 = 0;               // Clear flag
}

void serial_init()
{
    TMOD = 0X20;
    SCON = 0X50;
    TH1 = 0XFD;
    TR1 = 1;
}
void putchar (char c)
{
  SBUF = c;    // load serial port with  transmit value
  while (!TI);
    TI = 0;    // clear TI flag
}
char getchar ()
{
  char r;
    while (!RI);
    RI = 0;
    r = SBUF;  // clear RI flag
  return r;    // return character from SBUF
}

int get_num()
{
char str[10];
unsigned int i=0;
while(1)
{
 str[i]=getchar();
 if(str[i]=='\r')
{
str[i]='\0';
putchar('\n');
putchar('\r');
break;
}
else if(str[i]==0x7f)
{
    putchar(0x7f);
    i--;
}
else if(str[i]>='0'&&str[1]<='9')
{
putchar(str[i]);
i+=1;
}
else{
    putchar(str[i]);
    printf_tiny("not valid enter again \n\r");
    i=0;
}
}
return atoi(str);
}





char* get_str()
{
char str[100];
unsigned int i=0;
while(1)
{
 str[i]=getchar();
 if(str[i]=='\r')
{
str[i]='\0';
putchar('\n');
putchar('\r');
break;
}
else if(str[i]==0x7f)
{
    putchar(0x7f);
    i--;
}
else
{putchar(str[i]);
i+=1;
}

}
return str;
}

void start_clock()
{
IEN0=0xA0;     // enabling timer 2 interrrupt
T2CON=0x00;    // timer 2 control register set
T2MOD=0x00;   // timer 2  mode register set
RCAP2H=0x4C;    // timer 2 set for 50 milliseconds
RCAP2L=0x00;
TR2=1;       // starting timer 2
}

void stop_clock()
{
TF2=0;
TR2=0;
}

void reset_clock()
{
TR2=0;         //STOP TIMER 1
TH2=0X4C;      //reload count
TL2=0X00;
hundrdmilli='0';  //clear all variables
secs0='0';
secs1='0';
mins0='0';
mins1='0';
ctr=0;
TR2=1;          //restart timer
}

void isr23() __interrupt(5) // when timer 2 overflows enter the ISR
{   uint8_t add=0;
	TF2=0; // clear timer flag
    if(ctr==0)
    {
		ctr=1;
	}
	else
	{
        add= *read_cmd & 0x7f; // storing address
		ctr=0;
		hundrdmilli++;
		if(hundrdmilli>'9') //if milliseconds exceeds 9 then reset variable to 0
		{
			hundrdmilli='0';
			secs0++;
			if(secs0>'9') // if the second digit of seconds variable is 9 set it to 0 and increment the value of  seconds 1 variable
			{
				secs0='0';
				secs1++;
		        if(secs1>'5')
                {
		            secs1='0';
                    mins0++;
                    if(mins0>'9')
                    {
                        mins0='0';
                        mins1++;
                    }
                }
            }
        }

        lcdgotoaddress(0x59);
       lcdputch(mins1);
        lcdgotoaddress(0x5A);
       lcdputch(mins0);
        lcdgotoaddress(0x5B);
       lcdputch(':');
        lcdgotoaddress(0x5C);
       lcdputch(secs1);
        lcdgotoaddress(0x5D);
       lcdputch(secs0);
        lcdgotoaddress(0x5E);
       lcdputch(':');
        lcdgotoaddress(0x5F);
       lcdputch(hundrdmilli);
        lcdgotoaddress(add);
	}
}

	void lcdcreatechar(unsigned char ccode, unsigned char row_vals[8])
	{


    int i;
    *write_cmd = 0x40|((ccode&0x07)<<3);
    for(i=0;i<8;i++)
    {
        lcdbusywait();
        *write_data = (row_vals[i])&0x1f;
    }

}

int get_hex()
{
char val[10];
unsigned int i=0;
uint16_t val1=0;
while(1)
{
 val[i]=getchar();
 if(val[i]=='\r')
{
val[i]='\0';
putchar('\n');
putchar('\r');
break;
}
else if(val[i]==0x7f)
{
    putchar(0x7f);
    i--;
}
else if((val[i]>='0'&&val[i]<='9')|| (val[i]>='a'&&val[i]<='f')||(val[i]>='A'&&val[i]<='F'))
{
putchar(val[i]);
i+=1;
}
else{
    putchar(val[i]);
    printf_tiny("not valid enter again \n\r");
    i=0;
}
}
i=0;
while(val[i]!='\0')
{
    if(val[i]>='0'&&val[i]<='9')
    {
        val1 = (val1*16)+(val[i]-48);
    }
    else if(val[i]>='A'&&val[i]<='F')
    {
        val1 = (val1*16)+(val[i]-55);
    }
    else if(val[i]>='a'&&val[i]<='f')
    {
        val1 = (val1*16)+(val[i]-87);
    }
    i++;
}
return val1;

}


void lcd_dump_ddram()
{    uint8_t add=0;
    *write_cmd = 0x80;

    while(add<=0x5f)
    {
        if(add%16==0)
        {
            printf_tiny(" \n\r %x\t ",add);
        }
       lcdbusywait();
       printf_tiny(" %x ",*read_data);
      if (add==0x1f)
      {
          lcdbusywait();
          lcdgotoaddress(0x40);
          add=0x40;
      }
      else
      {
          add++;
      }
    }
}



void lcd_dump_cgram() // reading and printing contents of cgram
{    uint8_t add=0;


    while(add<=64)
    {
        if(add%8==0)
{
          printf_tiny(" \n\r %x\t ",add);
      lcdbusywait();
       *write_cmd=0x40|((add/8)<<3);

    }
    lcdbusywait();
    printf_tiny(" %x ",*read_data);
    add++;

}}

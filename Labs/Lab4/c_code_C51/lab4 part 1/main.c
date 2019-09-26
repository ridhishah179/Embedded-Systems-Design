#include <mcs51/at89c51ed2.h>
#include <stdio.h>
#include <mcs51reg.h>
#include <stdlib.h>
#include <stdint.h>
#define SCL P1_5
#define SDA P1_6

void Delay();
int ack();
void Sendnack();
void SendAck();
int get_num();
void Start();
void Stop();
void reset();
void write_eeprom(uint16_t a,unsigned char byt);
void read_eeprom(uint16_t a);
void read_cont(uint16_t start_add,uint16_t end_add);
void serial_init();

void main()

{

    uint16_t a1=0,c,d,e,choice;
    uint16_t b;
    serial_init();
    IT0=1;
    EX0=1;
    EA=1; // Calling serial communication
    while(1)
  {
     printf_tiny("\n\rPLEASE ENTER AMONGST FOLLOWING OPTIONS (JUST PRESS OPTION NUMBER):--\n\r1>READ\n\r2>WRITE\n\r3>READ CONTINOUS\n\r4>RESET\n\r"); // asking user to choose from the following options
     printf_tiny("entered choice: ");
   choice=get_num();
     if(choice==1) // if choice is one execute read_eeprom function
     {
     label1: printf_tiny("\n\renter read address");
        c=get_num();
        if (c>0x7ff) // check if entered address is in range
        {
            printf_tiny("invalid address , enter again ");
            goto label1;
        }
        else
        {
        read_eeprom(a1);
        }
   }
   else if(choice==2) //if choice is 2 execute write_eeprom function
   {
    label2: printf_tiny("\n\renter address");
        a1=get_num();
        if (a1>0x7ff) // check if entered address is in range
        {
            printf_tiny("invalid address , enter again ");
            goto label2;
        }

       label5: printf_tiny("\n\renter data");
        b=get_num();
        if (b>0xff)// check if entered data is 8 bit
        {
            printf_tiny("data out of range, enter again ");
            goto label5;
        }
        write_eeprom(a1,b);// write to eeprom after taking adress and data

   }
   else if(choice==3)//if choice is 3 execute read_cont function
   {
      label3: printf_tiny("\n\renter strt address");
        d=get_num();
        if (d>0x7ff)// check if entered address is in range
        {
            printf_tiny("invalid address , enter again ");
            goto label3;
        }
        label4: printf_tiny("\n\renter end address");
        e=get_num();
        if (e>0x7ff)// check if entered address is in range
        {
            printf_tiny("invalid address , enter again ");
            goto label4;
        }
        if(d>e)
        {
            printf_tiny("invalid!");
            goto label3;
        }

        read_cont(d,e);// reading continuously from start adress to end address in the memory
   }
   else if(choice==4)//if choice is 4 reset function
   {
     reset(); // software reset
   }
   else
   {
     printf_tiny("\n\n\rPLEASE ENTER VALID OPTION!!\n\n\n\n\n");
   }
    }
}
void Start() //function to start i2c
{
SCL=0;
SDA = 1; // make sda line high
SCL = 1; //toggling scl line from 0 to 1
Delay(); // delay of 10us
SDA = 0;
}

void Stop()
{
SCL=0;
SDA = 0;
SCL = 1;
Delay();
SDA = 1;
}


uint8_t read_i2c()
{
int8_t i=0;
uint8_t rxdata=0;
while(i<=7)
{
  SCL = 0;
  SDA=1;
  SCL=1;
  Delay();
 rxdata=((rxdata<<1)|SDA);
 i++;
}
return rxdata;
}




void write_i2c(unsigned char byte)
{
int8_t i=7;
while(i>=0)
{
    SCL=0;
    SDA=((byte>>i)&0x01);
    SCL=1;
    Delay();
    i--;
}
}

void write_eeprom(uint16_t a,uint8_t byt)
{
 uint8_t ack_check=0;
 uint8_t vola=0;
 Start();
 vola=(0xA0|((a>>7)&0x0e));
 write_i2c(vola);
 ack_check=ack();
  vola=a&0xff;
 if (ack_check==1)
 {
    write_i2c(vola);
 }
 ack_check=ack();
  vola=byt;
 if (ack_check==1)
 {
   write_i2c(vola);
 }
 ack_check=ack();
 Stop();
}

void read_eeprom(uint16_t add)
{
 uint8_t ack_check=0;
 uint8_t vola=0;
 Start();
 vola=(0xA0|((add>>7)&0x0e));
 write_i2c(vola);
 ack_check=ack();
  vola=add&0xff;
 if (ack_check==1)
 {
    write_i2c(vola);
 }
 ack_check=ack();
  if(ack_check==1)
  {
      Start();
      vola=(0xA0|(((add>>7)&0x0e)|0x01));
     write_i2c(vola);

  }
  ack_check=ack();
 if(ack_check==1)
  {
   printf_tiny("value is : %x ",read_i2c());
  }
 Sendnack();
Stop();
}
void read_cont(uint16_t start_add,uint16_t end_add)
{
 uint8_t ack_check=0;
 uint8_t vola=0;
 uint16_t i,offset;
 uint16_t ctr=0;
 Start();
 //sending slave address
 vola=(0xA0|((start_add>>7)&0x0e));
 write_i2c(vola);
 ack_check=ack();
  vola=start_add&0xff;
 if (ack_check==1)// checking the value returned by ack function  , if it is true send next address
 {
    write_i2c(vola);
 }
 ack_check=ack();
  if(ack_check==1)
  {
      Start();
      vola=(0xA0|(((start_add>>7)&0x0e)|0x01));
     write_i2c(vola);
  }
  ack_check=ack();
 if(ack_check==1)
  {
    i=start_add;offset=start_add;
    printf_tiny("%x:",start_add);
    while(i<=end_add)
      {
        ctr++;
        if(ctr==17)
        {
          offset=offset+16;
          printf_tiny("\n\r %x:",offset);ctr=1;
      }
            printf_tiny("  %x  ",read_i2c());
            if(i<end_add)
            {
                SendAck();
            }
            i++;
        }
  }
  Sendnack();
Stop();
}

 void reset()
 {   int8_t i;
     Start();
     SCL=0;
     SDA=1;
     for (i=0;i<=8;i++)
     {
         SCL=1;
         Delay();
         SCL=0;
         Delay();

     }
     Start();
     Stop();

 }
int ack()
{
SCL=0;
SDA=1;
SCL=1;
TH0=0xFF;
TL0=0xF6;
TR0 = 1;
while (TF0 == 0);
{
    if(SDA==0)// checking if SDA=0 i.e if acknowledgement is recieved when the delay is going on
    {
       TR0 = 0;
       TF0 = 0;
       return 1;
    }

    return 0;
}
}

void Sendnack()
{
SCL=0;
SDA=1;
SCL=1;
Delay();
 }

void SendAck()
{
SCL  = 0;
SDA = 0;
SCL = 1;
Delay();
}


void Delay()
{
TMOD |= 0x01;           // Timer0 mode1
TH0=0xFF;              //initial value for 10us
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

void External10_ISR() interrupt 0 // checkking interrupt from IO expander
{
    uint8_t ctr,a;
    Start();
    write_i2c(0x41);
    a=ack();
    if(a==1)
    {
        ctr=read_i2c();
        Stop();
        ctr=((ctr^0x01)<<1)|0xFD;
        Start();
        write_i2c(0x40);
        a=ack();
        if(a==1)
        {
            write_i2c(ctr);
            a=ack();
            Stop();
        }
    }
}

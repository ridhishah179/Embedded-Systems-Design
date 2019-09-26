#include <mcs51/at89c51ed2.h>
#include <stdio.h>
#include <mcs51reg.h>
#include <malloc.h>
#include <stdlib.h>
#include <stdint.h>
#define heapsz 6000  // size must be smaller than available XRAM

//Debug port
#define DEBUG
#ifdef DEBUG
#define DEBUGPORT(x) dataout(x);
#else
#define DEBUGPORT(x)
#endif

unsigned char heap[heapsz];
void serial_init();
int get_num();
__xdata __at 0xcfff uint8_t val;

//setting up AUXR Register
_sdcc_external_startup()
{
  AUXR |= 0x0C;
  AUXR &= 0xFD;
return 0;
}
void dataout(uint8_t a)
{
    val = a;
}




    void main()
{
    char *str=NULL;
    unsigned int x1=0,x2=0,x3=0;
    unsigned int buffsize[100]={0};
    unsigned char *buffAddress[100];
    unsigned int * buffer0;
    unsigned int * buffer1;
    unsigned int * buffern;
    unsigned int  buffCnt=0;
    unsigned int Numchar=0;
    volatile unsigned char start  = 0;
    unsigned char c;
    unsigned int b0chr=0;
    unsigned int b1chr=0;
    unsigned int count1=10;
    signed int bnumber=0;
    unsigned int buffNo=0;
    unsigned int bufferLen=0;
    volatile unsigned int bData=0;
    unsigned int buffAdd=0;
    unsigned int counter=0;
    unsigned int ncnt=0;

init_dynamic_memory((MEMHEADER xdata *)heap, heapsz);//allocating heap
serial_init();
buffer0 = 0;
buffer1 = 0;
buffern = 0;

DEBUGPORT(1)//calling bebug function

while((buffer0==0)&& (buffer1==0))
{
 label1:
  if(x2==0)//using x2 as a flag
  {
      printf_tiny("\r\nEnter the Buffer0 and Buffer1 size between 16 and 3200,divisible by 16:\n");
  }
  else
  {
      printf_tiny("\r\nSize Error! \n");
      x2=0;
      printf_tiny("\r\nEnter the Buffer0 and Buffer1 size between 16 and 3200,divisible by 16 less than %d:\n",x1);
  }
 x1=get_num(); // get size of buffer from user

 if(((x1<16)||(x1>3200))&& ((x1%16)!=0) )//Check if size allocated is in between 16 and 3200 and divisible by 16.
  {
            printf_tiny("\r\Entered size out of range!\n");
            goto label1;
  }

  buffer0 = malloc(x1);
  buffer1 = malloc(x1);

  if (((buffer0)!= 0)&&((buffer1)!= 0)) // if both buffer 0 and buffer 1 are not NULL i.e  allocated
  {
        printf_tiny("\r\n Buffer 0 Allocated!");
        printf_tiny("\r\n Buffer 1 Allocated!");
        buffsize[0]=x1;//size of buffer 0 in size array
        buffsize[1]=x1;//size of buufer 1 in size array
  }
  else
  {
     x2=1; // if buffers are not allocated set flag x2 to 1
     free(buffer0);
     free(buffer1);
     buffer0=0;
     buffer1=0;
  }
}

//store buffer address and length in arrays
buffAddress[0]=buffer0;
buffAddress[1]=buffer1;
buffsize[0]=x1;
buffsize[1]=x1;
buffCnt=buffCnt+2;//count of the number of bufffers

printf_tiny("adress of b0 = 0x%x",(uint16_t)buffAddress[0]); // printing address of buffer 0
printf_tiny("adress of b1 = 0x%x",(uint16_t)buffAddress[1]);// printing address of buffer 1
while(start == 0)

{

printf_tiny("\r\nEnter a character: ");
c=getchar();//storing the characters entered by user in variable c
Numchar++; //storing number of characters

    if ((c >= 'a')&&(c <= 'z'))//for lower case from a to z
        {

            if (b0chr<buffsize[0]) //bchr is counter for number of characters in buffer 0 and if it is less than size of buffer 0 then enter loop
            {   *(buffer0+b0chr) = c;
                b0chr++;
           printf_tiny("\nstoring charcters in  buffer '0'");
           }
           else {
                printf_tiny("\tBuffer '0' Full!");
           }
        }

    else if(c=='+')// if character entered is +

{
DEBUGPORT(2)


                    printf_tiny("\r------------------------------------------------------------------------------------\n");
                    printf_tiny("\r|\t\t\tAdding the Buffers                                                             |");
                    printf_tiny("\n\r--------------------------------------------------------------------------------\n");
                    x3 = 0;
                    x2=0;
              label2:
                     if(x2==0)
                    {
                       printf_tiny("\r\n Enter buffer size between 30 nd 300:\  n"); //taking buffer size from user
                    }
                    else
                    {
                       printf_tiny("\r\nSize error , enter a size within the range \ n");
                       x2=0; // if size error then display message and reset flag
                       printf_tiny("\r\nEnter a buffer size between 30 and 300\n");
                    }

                    x3=get_num();//storing size in x3


                    if ((x3>29) && (x3<=300))//checking if size is within the range
                    {
                                  buffern = malloc(x3);//allocting a buffer of the given size
                                  if (buffern != 0)  //check if buffer is not null i.e it has been allocated
                                  {
                                 buffAddress[buffCnt]=buffern;//filling address array with adress of the new buffer
                                 buffsize[buffCnt]=x3;//adding size of new buffer in size array
                                 buffCnt=buffCnt+1;//increment counter
                                 printf_tiny("\r\n  Buffer Allocated");


                                  }
                                  else
                                  {
                                        printf_tiny("\r\n Allocation failed");//ELSE IF IT FAILS,GIVE THEBAD NEWS
                                        x3=0;
                                        goto label2;
                                  }
                    }
                    else
                    {
                                x2=1;

                                goto label2;
                    }}

    else if(c=='-')
    {

                        printf_tiny("\r\t\t\tDeleting buffer\n");
                        printf_tiny("\n\r------------------------------------------------------------------------------------\n");
                    printf_tiny("\r\nEnter the number of the buffer to deleted ");

                    bnumber=get_num();// getting the number of buffer to be deleted


                        if(bnumber>100)
                                {
                                    printf_tiny("\r\nEnter  a valid number decimal number");
                                }
                                else if(buffAddress[bnumber]!=0)//checking if buffer exists
                                {
                        if((bnumber>= 0)&&(bnumber <= 99))
                                {
                                    if(bnumber<1)//condition for buffer 0 not being deleted
                                        {
                                           printf_tiny("cannot delete buffer '0' ");
                                        }
                                        else if(bnumber >=1 )
                                        {   free (buffAddress[bnumber]);//freeing buffer
                                            buffAddress[bnumber] = 0;// making address in array null if buffer is deleted
                                            buffsize[bnumber] = 0;// making size of the deleted buffer null
                                            buffCnt=buffCnt-1;//decreasing the count of buffers when a buffer is deleted
                                            printf_tiny("\r\n Buffer %d deleted",bnumber);
                                        }
                                }
                                }
                        else
                            {
                                  printf_tiny("\r\n invalid input try again");// if buffer number entered is not assigned say that the input is invalid
                            }
    }
    else if(c=='@')
    {





                        printf_tiny("\n\r---------------------------------------------------------------------------------\n");
                        printf_tiny("\r\n\tFreeing all Buffers\n");
                        buffNo=0;//counter for freeing buffers
                                for(buffNo=0;buffNo<buffCnt;buffNo++)//free all buffers that are allocated
                                    {
                                        free(buffAddress[buffNo]);
                                        buffAddress[buffNo]=0;
                                        buffsize[buffNo]=0;
                                    }
                               buffCnt= 0;//after freeing make number of buffers to 0
                               buffer0=0;
                               buffer1=0;
                               x1=0;
                               x2=0;
                               goto label1;//Go to the start
    }
 else if(c=='=')
    {              if(b0chr!=0) // if the number of characters are not 0.
                   {


                       printf_tiny("\r\t\t\tAddress in Hex\n");
                        printf_tiny("\n\r--------------------------------------------------------------------\n");

                        bData=0;
                        buffAdd=0;

                        while(((buffAdd*16)+bData)<b0chr )//checking if counters are less than number of characters
                          {
                                   printf_tiny("\r\n%x : ",(uint16_t)(buffer0+buffAdd));// printing address in hex
                                   bData=0;
                                   while((bData<16)&&(((buffAdd*16)+bData)<b0chr))
                                        {
                                             printf_tiny("%x ",(uint16_t)*(buffer0+buffAdd+bData)); // printing the data entered
                                             bData++;
                                        }
                                    printf_tiny("\n\r");
                                    buffAdd ++;
                          }
                    }
                    else
                     {
                        printf_tiny("\r\nBuffer 0 is empty , enter data!\n");
                     }
    }

 else if(c=='?')
    {


                       printf_tiny("\r----------------------------------------------------------------------------------\n");
                        printf_tiny("\r\n\t\t\t       BUFFER REPORT                                                      \n");
                        printf_tiny("\n\r---------------------------------------------------------------------------------\n");

                            buffAdd=0;
                            while (buffAdd < 20)
                                {
                                     if ((buffAddress[buffAdd]) != 0)
                                        {
                                          printf_tiny("\r\n\t\t\tBuffer %d Details\t\t\t\n ",buffAdd);
                                          printf_tiny("\r\n\tBuffer %d start address                  :    %x",buffAdd,(uint16_t)buffAddress[buffAdd]);//print start adress
                                          printf_tiny("\r\n\tBuffer %d end Address                :    %x",buffAdd,(uint16_t)(buffAddress[buffAdd]+buffsize[buffAdd]));//ending address
                                          printf_tiny("\r\n\tSize of buffer %d                        :    %d",buffAdd,buffsize[buffAdd]);//Size


                                          if(buffAdd == 0){
                                             counter = b0chr; // put number of characters in counter
                                             }
                                          else
                                             counter = 0;
                                          printf_tiny("\t\r\n");
                                          printf_tiny("\t\r\nnumber of characters in buffer %d                   :    %d", buffAdd,counter);//NUMBER OF CONTENTS
                                          printf_tiny("\t\r\nFree space in buffer %d                           :    %d",buffAdd,(buffsize[buffAdd] - counter));printf_tiny("\r\n");//FREE SPACE IN BUFFER
                                          printf_tiny("\r\n");
                                        }
                                buffAdd++;
                                }
                        printf_tiny("\r\n");
                        ncnt=b0chr;
                            printf_tiny("\r\n\tNumber of characters received till last'?'   : %d\n", ncnt);
                        printf_tiny("\r--------------------------------------------------------------------------------\n");


                        if(b0chr!=0)
                        {
                           printf_tiny("\r\n\tcontents of buffer 0:\n   ");
                           buffAdd=0;
                           bData=0;
                           bufferLen=buffsize[0];
                           while( ((buffAdd*64)+bData) < b0chr)// for printing 64 characters
                           {
                                   bData=0;
                                   while((bData<64)&&(((buffAdd*64)+bData)<b0chr))
                                        {

                                              putchar(*(buffer0 + (buffAdd*64) + bData));
                                             bData++;//Incrementing data counter
                                        }
                                    printf_tiny("\n\r");
                                    buffAdd++;

                           }
                           b0chr = 0;
                        }
                        else
                        {
                              printf_tiny("\r\nAS Indicated buffer 0 is empty!\n");
                        }
    }
    else
    {

                    printf_tiny("\r\n not storing \n");//do not store characters other than storage characters





    }}}

    void putchar (char c)
{
	SBUF = c;  	// load serial port with  transmit value
	while (!TI);
    TI = 0;  	// clear TI flag
}
char getchar ()
{
	char r;
    while (!RI);



    RI = 0;
    r = SBUF;	// clear RI flag
	return r;  	// return character from SBUF
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



void serial_init()
{
TMOD = 0X20;
SCON = 0X50;
TH1 = 0XFD;
TR1 = 1;
}



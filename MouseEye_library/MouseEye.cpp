/*
  MouseEye.cpp - Library for byterfacing ADNS2620 Optical Navigation IC.
  Created by Joel Murphy for Rachel's Electronics, Fall 2010.
  Released into the wild.
*/

// #include "WProgram.h"
#include "MouseEye.h"

//////////////////////////////////////////
//	DEFINES
//////////////////////////////////////////


///////////////////////////////////////////
//	CONSTRUCTOR
///////////////////////////////////////////
MouseEye::MouseEye(int sck, int sdio)
{
  _SCK = sck;	// keep track of the clock pin
  _SDIO = sdio;	// keep track of the data  pin
	//	SET PIN DIRECTION
  pinMode(_SDIO, INPUT);
  pinMode(_SCK, OUTPUT);
  digitalWrite(_SCK,HIGH);	//clock idles high
}

//////////////////////////////////////////
//	PUBLIC FUNCTIONS
//////////////////////////////////////////

void MouseEye::getMouseEyeDelta()
{
deltaY = readDNS(0x42);
deltaX = readDNS(0x43);
deltaY = ~deltaY; deltaY++;	// invert deltaY
}


uint8_t MouseEye::Config_Read()
{
byte n = readDNS(0x40);
return n;
}

void MouseEye::Config_Write(byte cfig)
{
writeDNS(0x40,cfig);
}

uint8_t MouseEye::Status()
{
byte n = readDNS(0x41);
return n;
}

int MouseEye::Squal()
{
b = readDNS(0x44);
return b;
}

uint8_t MouseEye::Max_Pixel()
{
b = readDNS(0x45);
return b*2;
}

uint8_t MouseEye::Min_Pixel()
{
b = readDNS(0x46);
return b;
}

int MouseEye::Pixel_Sum()
{
b = readDNS(0x47);
int sum = b*128;
return sum;
}

word MouseEye::Shutter()
{
word w;
sUpper = readDNS(0x49);
sLower = readDNS(0x4A);
w = word(sUpper,sLower);
return w;
}

short MouseEye::Frame_Period_Read()
{
b = readDNS(0x4B);
short period = b << 8;
return period;
}

void MouseEye::Frame_Period_Write(short period)
{
b = period >> 8;
writeDNS(0x4B,b);
}

void MouseEye::Pixel_Data()
{
writeDNS(0x48,0x48);
}

byte MouseEye::Pixel_Data_Read()
{
b = readDNS(0x48);
return b;
}


//////////////////////////////////////////
//	PRIVATE FUNCTIONS
//////////////////////////////////////////


byte MouseEye::readDNS(byte outByte){
  int i;
  byte inByte;
  for (i=7; i>=0; i--){        		//choose bit send
    digitalWrite(_SCK,LOW);     		//setup on falling edge
    digitalWrite(_SDIO, (bitRead(outByte,i)));	//send bit
    digitalWrite(_SCK,HIGH);    		//DNS samples on rising edge
  }
  delayMicroseconds(20);		// wait for ADNS to get hold of data line
  pinMode(_SDIO,INPUT);         		//get ready to read
  delayMicroseconds(80);
  for (i=7; i>=0; i--){        		//choose bit to store
    digitalWrite(_SCK,LOW);     		//DNS sets up on falling edge
    digitalWrite(_SCK,HIGH);    		//sample on rising edge
    bitWrite(inByte,i,(digitalRead(_SDIO)));	//get bit
  }
  pinMode(_SDIO,OUTPUT);		//reset SDIO for next time
  return inByte;			//return byte
}// end readDNS



void MouseEye::writeDNS(byte high, byte low){

  word outWord = word(high,low);  	//load bytes into the chute
  bitSet(outWord,15);               		//we want to write data
  for (int i=15; i>=0; i--){    		//choose bit MSB
    digitalWrite(_SCK,LOW);      		//setup on falling edge
    digitalWrite(_SDIO, (bitRead(outWord,i)));    	//send bit
    digitalWrite(_SCK,HIGH);
  }
}//  end writeDNS

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
	//	SET PIN DIRECTION
  pinMode(sck, OUTPUT);
  pinMode(sdio, INPUT);
  digitalWrite(sck,HIGH);	//clock idles high
  // initialize pin states and prepare default config settings
  _SCK = sck;	// keep track of the clock pin
  _SDIO = sdio;	// keep track of the data  pin

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


byte MouseEye::Config_R()
{
byte n = readDNS(0x40);
return n;
}

void MouseEye::Config_W(byte cfig)
{
writeDNS(0x40,cfig);
}

byte MouseEye::Status()
{
byte n = readDNS(0x41);
return n;
}

byte MouseEye::Squal()
{
b = readDNS(0x44);
return b;
}

byte MouseEye::Max_P()
{
b = readDNS(0x45);
return b;
}

byte MouseEye::Min_P()
{
b = readDNS(0x46);
return b;
}

byte MouseEye::Pixel_Sum()
{
b = readDNS(0x47);
b *= 0.395;
return b;
}

word MouseEye::Shutter()
{
word w;
sUpper = readDNS(0x49);
sLower = readDNS(0x4A);
w = sUpper << 8;
w += sLower;
return w;
}

byte MouseEye::F_Period_R()
{
b = readDNS(0x4B);
return b;
}

void MouseEye::F_Period_W(byte F)
{
writeDNS(0x4B,F);
}

void MouseEye::Pixel_Data()
{
writeDNS(0x48,0x48);
}

byte MouseEye::Pixel_Data_R()
{
b = readDNS(0x48);
return b;
}


//////////////////////////////////////////
//	PRIVATE FUNCTIONS
//////////////////////////////////////////


byte MouseEye::readDNS(byte first){
  int i;
  byte second;
  for (i=7; i>=0; i--){        		//choose bit send
    digitalWrite(_SCK,LOW);     		//setup on falling edge
    digitalWrite(_SDIO, (bitRead(first,i)));	//send bit
    digitalWrite(_SCK,HIGH);    		//DNS samples on rising edge
  }
  delayMicroseconds(20);		// wait for ADNS to get hold of data line
  pinMode(_SDIO,INPUT);         		//get ready to read
  delayMicroseconds(80);
  for (i=7; i>=0; i--){        		//choose bit to store
    digitalWrite(_SCK,LOW);     		//DNS sets up on falling edge
    digitalWrite(_SCK,HIGH);    		//sample on rising edge
    bitWrite(second,i,(digitalRead(_SDIO)));	//get bit
  }
  pinMode(_SDIO,OUTPUT);		//reset SDIO for next time
  return second;			//return byte
}// end readDNS



void MouseEye::writeDNS(byte top, byte bottom){

  word out = word(top,bottom);  	//load bytes into the chute
  bitSet(out,15);               		//we want to write data
  for (int i=15; i>=0; i--){    		//choose bit MSB
    digitalWrite(_SCK,LOW);      		//setup on falling edge
    digitalWrite(_SDIO, (bitRead(out,i)));    	//send bit
    digitalWrite(_SCK,HIGH);
  }
}//  end writeDNS

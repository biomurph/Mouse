/*
  MouseEye.h - Header file for    srfacing ADNS2620 Optical Navigation IC.
  Created by Joel Murphy for Rachel's Electronics, Fall 2010.
  Released into the wild.
*/

#ifndef MouseEye_h
#define MouseEye_h
// #include "WProgram.h"
#include <Arduino.h>





class MouseEye
{
  public:
    MouseEye(int sck, int sdio);		//constructor

    void getMouseEyeDelta();
    byte Config_R();
    void Config_W(byte);
    byte Status();
    byte Squal();
    byte Max_P();
    byte Min_P();
    byte Pixel_Sum();
    word Shutter();
    byte F_Period_R();
    void F_Period_W(byte);
    void Pixel_Data();
    byte Pixel_Data_R();

    char deltaX;
    char deltaY;

  private:
    int _SCK;
    int _SDIO;
    byte b;
    byte sUpper;
    byte sLower;
    void writeDNS(byte, byte);	// write data to ADNS register
    byte readDNS(byte);		// read data from ADNS register

};

#endif

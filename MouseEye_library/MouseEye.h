/*
  MouseEye.h - Header file for byterfacing ADNS2620 Optical Navigation IC.
  Created by Joel Murphy, Fall 2010.
  Released into the wild.

  Updated Spring 2018 to work with Arduino Leonardo as HID Mouse
  Working toward Open Source Certified USB Mouse in Summer of 2018

  >>>> NEEDS
        Right and Left Switch integration https://www.mouser.com/ProductDetail/E-Switch/LL3301DF065QJ?qs=sGAEpiMZZMvxtGF7dlGNpqqmTFthXBmf2IHkMbm6UkQ%3d
        Mouse Wheel integration http://www.alps.com/prod/info/E/HTML/Encoder/Incremental/EC10E/EC10E1220505.html
*/

#ifndef MouseEye_h
#define MouseEye_h
#include <Arduino.h>
// #include "WProgram.h"
#include <stdint.h>





class MouseEye
{
  public:
    MouseEye(int sck, int sdio);		//constructor

    void getMouseEyeDelta();
    uint8_t Config_Read();
    void Config_Write(uint8_t);
    uint8_t Status();
    int Squal();
    uint8_t Max_Pixel();
    uint8_t Min_Pixel();
    int Pixel_Sum();
    word Shutter();
    short Frame_Period_Read();
    void Frame_Period_Write(short);
    void Pixel_Data();
    byte Pixel_Data_Read();

    char deltaX;
    char deltaY;

  private:
    int _SCK;
    int _SDIO;
    uint8_t b;
    uint8_t sUpper;
    uint8_t sLower;
    void writeDNS(byte, byte);	// write data to ADNS register
    uint8_t readDNS(uint8_t);		// read data from ADNS register

};

#endif

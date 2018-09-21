


#ifndef Mousey_H
#define Mousey_H

#include <Arduino.h>
#include <stdint.h>
#include <Mouse.h>

// PINS
#define	SCK  9
#define SDIO 8
#define HID_SELECT  11
#define WHEEL_A 2
#define WHEEL_B 3
#define RIGHT 5
#define LEFT  6
#define LED 13

class Mousey {
public:
	  Mousey();
		boolean hid = false;
		boolean start(void);
		void setPins(void);
		void eventSerial(void);
		void update(void);
		void checkEye(void);
		void checkWheel(void);
		void checkButtons(void);
		void sendButton(int,int);
		void encode(void);

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
		volatile boolean wheelMoved = false;

    char deltaX;
    char deltaY;


private:
		volatile byte wheelState = 0x00;     // holds the state of A and B
		volatile byte lastWheelState = 0x00; // remembers the last state of A and B
		//volatile int wheel[2] = {WHEEL_A, WHEEL_B};
		volatile boolean fwd = false;
		boolean lastDirection = false;
		//volatile boolean wheelMove = false;
		volatile unsigned long wheelPos = 0;
		volatile unsigned long lastWheelPos = 0;
		volatile int wheelDelta = 0;
		volatile int wheel[2] = {WHEEL_A, WHEEL_B};
		boolean updateMouse = false;
		int buttonPin[2] = {LEFT,RIGHT};
		int buttonState[2];             // the current reading from the mouse buttons
		int lastButtonState[2] = {LOW,LOW};   // the previous reading from the input pin
		long lastBounce = 0;            // the last time the output pin was toggled
		unsigned long bounceDelay = 10;          // the debounce time; increase if the output flickers
		int bounce = 0;

		// int _SCK;
    // int _SDIO;
    uint8_t b;
    uint8_t sUpper;
    uint8_t sLower;
    void writeDNS(byte, byte);	// write data to ADNS register
    uint8_t readDNS(uint8_t);		// read data from ADNS register
};

		// MouseEye eye(ADNS_SCK,ADNS_SDIO);

		// attachInterrupt(digitalPinToInterrupt(WHEEL_A), encode, CHANGE);

#endif

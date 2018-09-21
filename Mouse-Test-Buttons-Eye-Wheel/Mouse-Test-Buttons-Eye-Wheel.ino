/*

  Mouse test code
  Used for testing mouse eye and mouse buttons (R,L)
  Works in serial mode
  Needs testing in HID mode


  biomurph Summer 2018

*/
#include "MouseDefinitions.h"
#include <Mouse.h>
#include <MouseEye.h>
MouseEye eye(ADNS_SCK, ADNS_SDIO);   // SCK on pin 9, SDIO on pin 8
boolean stopped = false;

boolean hid = false;	// HID status is updated in setup

volatile boolean wheelMove = false;
volatile int deltaWheel = 0;
volatile int wheel[2] = {WHEEL_A, WHEEL_B};
boolean updateMouse = false;

void setup() {
  delay(1000);
  setPins();	// initialize pins

  hid = digitalRead(HID_SELECT);
  if(hid){
    Mouse.begin();
  } else {
    Serial.begin(115200);
    Serial.println("not hid");
    Serial.println("Mouse Test B-E-W");
  }
}


void loop() {

  checkEye();
  checkWheel();
  if(updateMouse){ // upsdateMouse is set in checkEye() and/or checkWheel()
    updateMouse = false;
    Mouse.move(eye.deltaX, eye.deltaY, deltaWheel);
    deltaWheel = 0;
    
  }
  checkButtons(); // send pressed and released on button events

  if(!hid){ eventSerial(); }	// option to talk to mouse

  delay(10); // is this necessary?
}





void setPins() {
  pinMode(LEFT, INPUT);
  pinMode(RIGHT, INPUT);
  pinMode(HID_SELECT, INPUT);
  pinMode(WHEEL_A, INPUT);
  pinMode(WHEEL_B, INPUT);
	for(int i=0; i<2; i++){
    pinMode(wheel[i],INPUT);
  }
  attachInterrupt(digitalPinToInterrupt(WHEEL_A), encode, CHANGE);
}

/*
	OpenMouse.ino
	Joel Murphy aka biomurphy
	Developed in Summer of 2018

	This sketch shows basic functionality of the Mouse give away
	in the 2018 OSHWA Summit Goodie Bag.

	Developed in Arduino 1.8.7
	Target = Arduino Leonardo

	This code is Free
	WYSIWYG
*/
#include "Mousey.h"

Mousey mouse;

void setup(){
  mouse.start();
  attachInterrupt(digitalPinToInterrupt(WHEEL_A), wheel_ISR, CHANGE);
}

void loop(){
	mouse.update();
	delay(10);
}

void wheel_ISR(){
  mouse.encode();
}

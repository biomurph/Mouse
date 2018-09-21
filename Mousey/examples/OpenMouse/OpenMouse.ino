/*


*/
#include "Mousey.h"

Mousey mouse;

void setup(){
  mouse.start();
  attachInterrupt(digitalPinToInterrupt(WHEEL_A), wheel_ISR, CHANGE);
}

void loop(){
	mouse.update();
	delay(5);
}

void wheel_ISR(){
  mouse.encode();
}

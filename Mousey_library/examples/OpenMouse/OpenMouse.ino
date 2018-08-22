/*


*/
#include "Mousey.h"

Mousey mouse;
boolean wheelMoved = false;

void setup(){
  mouse.start();
  attachInterrupt(digitalPinToInterrupt(WHEEL_A), readWheel, CHANGE);
}

void loop(){
  if(wheelMoved){
    wheelMoved = false;
    mouse.encode();
  }
	mouse.update();
	delay(10);
}

void readWheel(){
  wheelMoved = true;
}

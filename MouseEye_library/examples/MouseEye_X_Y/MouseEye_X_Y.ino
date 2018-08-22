/*   

Mouse Eye X Y reader
Written by Joel Murphy for Rachel's Electronics
Released into the wild. Fall, 2010

*/

#include <MouseEye.h>
MouseEye Mouse(9,8);    // SCK on pin 9, SDIO on pin 8

boolean noMove = false;

void setup(){
  Serial.begin(9600);
  delay(1000);
  Serial.println("MouseEye Library Example");
} 


void loop(){
  Mouse.getMouse();      // update deltaX and deltaY variables
  if (Mouse.deltaX == 0 && Mouse.deltaY == 0){  //when mouse is not moving
    if (noMove == false){                       //print "stopped" only once
      Serial.println("stopped");
      noMove = true;
    }
  }else{
    Serial.print(Mouse.deltaX,DEC);              //when mouse is moving
    Serial.print("\t");                          //pirnt the delta X and Y
    Serial.println(Mouse.deltaY,DEC);
    noMove = false;
  }
 delay(10);
  }
  

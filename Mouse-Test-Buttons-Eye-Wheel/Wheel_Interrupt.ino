
volatile byte wheelState = 0x00;     // holds the state of A and B
volatile byte lastWheelState = 0x00; // remembers the last state of A and B
//volatile int wheel[2] = {WHEEL_A, WHEEL_B};
volatile boolean fwd = false;
boolean lastDirection = false;
//volatile boolean wheelMove = false;
volatile unsigned long wheelPos = 0;
volatile unsigned long lastWheelPos = 0;



void encode(){
  wheelState = 0x00;
  for(int i=0; i<2; i++){
    wheelState |= (digitalRead(wheel[i]) << i);
  }
  if(wheelState != lastWheelState){
    switch(wheelState){
      case 0x00:
          fwd = true;
        break;
      case 0x01:
          fwd = false;
        break;
      case 0x02:
        fwd = false;
        break;
      case 0x03:
        fwd = true;
        break;
      default:
        break;
    }
    if(fwd){
      wheelPos ++;  // +=1
    }else{
      wheelPos --;  // -=1
    }
    wheelDelta = wheelPos - lastWheelPos;
    lastWheelPos = wheelPos;
    lastWheelState = wheelState;
    wheelMove = true;
    }
  }

void checkWheel(){
  if(wheelMove){
	wheelMove = false;
  if(hid){
    updateMouse = true;
  }else{
    Serial.println(wheelDelta);
  }
  }
}

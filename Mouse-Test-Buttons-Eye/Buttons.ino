



int buttonPin[2] = {LEFT,RIGHT};
int buttonState[2];             // the current reading from the mouse buttons
int lastButtonState[2] = {LOW,LOW};   // the previous reading from the input pin
long lastBounce = 0;            // the last time the output pin was toggled
unsigned long bounceDelay = 10;          // the debounce time; increase if the output flickers
int bounce = 0;


void checkButtons() {
  int button;
  for(int i=0; i<2; i++){
    button = digitalRead(buttonPin[i]);
    if (button != lastButtonState[i]) {
      lastBounce = millis();
      bounce = i+1; // 
      lastButtonState[i] = button;
    } 
  }

  if((millis() - lastBounce) > bounceDelay) {
    switch(bounce){
      case 0:
        break;
      case 1:
        sendButton(MOUSE_LEFT, lastButtonState[0]);
        break;
      case 2:
        sendButton(MOUSE_RIGHT, lastButtonState[1]);
        break;
      default:
        break;
    }
    bounce = 0;
  }

}


void sendButton(int activeButton, int state){
  if(state){
    if(hid){
      Mouse.release(activeButton);
    } else {
      Serial.print(state);
    }
  } else {
    if(hid){
      Mouse.press(activeButton);
    } else {
      Serial.print(state);
    } 
  }
  if(!hid){ Serial.print(" ");Serial.println(activeButton); }
    
}



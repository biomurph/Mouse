



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




/* 
 Debounce
 
 ***********************************************************************
 **                                                                   **
 ** The "Bounce" library offers a much easier way to debounce inputs  **
 **                                                                   **
 ***********************************************************************

 Each time the input pin goes from LOW to HIGH (e.g. because of a push-button
 press), the output pin is toggled from LOW to HIGH or HIGH to LOW.  There's
 a minimum delay between toggles to debounce the circuit (i.e. to ignore
 noise).  
 
 The circuit:
 * LED attached from pin 13 to ground
 * pushbutton attached from pin 2 to +5V
 * 10K resistor attached from pin 2 to ground
 
 * Note: On most Arduino boards, there is already an LED on the board
 connected to pin 13, so you don't need any extra components for this example.
 
 
 created 21 November 2006
 by David A. Mellis
 modified 30 Aug 2011
 by Limor Fried
 
This example code is in the public domain.
 
 http://www.arduino.cc/en/Tutorial/Debounce
 */

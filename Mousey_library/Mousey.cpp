




#include "Mousey.h"

Mousey::Mousey(){

}


boolean Mousey::start()
{
	// mouseEye eye(SCK,SDIO);
	delay(1000);
  setPins();	// initialize pins
	// _SCK = SCK;	// keep track of the clock pin
  // _SDIO = SDIO;	// keep track of the data  pin
	//	SET PIN DIRECTION
  pinMode(SDIO, INPUT);
  pinMode(SCK, OUTPUT);
  digitalWrite(SCK,HIGH);	//clock idles high

  hid = digitalRead(HID_SELECT);
  if(hid){
    Mouse.begin();
  } else {
    Serial.begin(115200);
		delay(1000);
    Serial.println("not hid");
    Serial.println("Mouse Test B-E-W");
  }
	return true;
}

void Mousey::update(){
	checkEye();			// checks for mouse movement and sets updateMouse
  checkWheel();		// checks for wheel movement and sets updateMouse
  checkButtons(); // sends pressed and released on button events
  if(updateMouse){
    updateMouse = false;
    Mouse.move(deltaX, deltaY, wheelDelta);
  }

  if(!hid){ eventSerial(); }	// option to talk to mouse
}

void Mousey::checkEye() {
  getMouseEyeDelta();      // update deltaX and deltaY variables
  if (deltaX != 0 || deltaY != 0) { //when mouse is moving
    if (hid) {
      updateMouse = true;
    } else {
      Serial.print(deltaX, DEC);               //when mouse is moving
      Serial.print("\t");                          //pirnt the delta X and Y
      Serial.println(deltaY, DEC);
    }
  }
}

void Mousey::checkWheel(){
  if(wheelMove){
	wheelMove = false;
  if(hid){
    updateMouse = true;
  }else{
    Serial.println(wheelDelta);
  }
  }
}


void Mousey::checkButtons() {
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


void Mousey::sendButton(int activeButton, int state){
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

// this is  the ISR. Not sure how to handle it ?
void Mousey::encode(){
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

void Mousey::getMouseEyeDelta()
{
	deltaY = readDNS(0x42);
	deltaX = readDNS(0x43);
	deltaY = ~deltaY; deltaY++;	// invert deltaY
}


uint8_t Mousey::Config_Read()
{
	byte n = readDNS(0x40);
	return n;
}

void Mousey::Config_Write(byte cfig)
{
	writeDNS(0x40,cfig);
}

uint8_t Mousey::Status()
{
	byte n = readDNS(0x41);
	return n;
}

int Mousey::Squal()
{
	b = readDNS(0x44);
	return b;
}

uint8_t Mousey::Max_Pixel()
{
	b = readDNS(0x45);
	return b*2;
}

uint8_t Mousey::Min_Pixel()
{
	b = readDNS(0x46);
	return b;
}

int Mousey::Pixel_Sum()
{
	b = readDNS(0x47);
	int sum = b*128;
	return sum;
}

word Mousey::Shutter()
{
	word w;
	sUpper = readDNS(0x49);
	sLower = readDNS(0x4A);
	w = word(sUpper,sLower);
	return w;
}

short Mousey::Frame_Period_Read()
{
	b = readDNS(0x4B);
	short period = b << 8;
	return period;
}

void Mousey::Frame_Period_Write(short period)
{
	b = period >> 8;
	writeDNS(0x4B,b);
}

void Mousey::Pixel_Data()
{
	writeDNS(0x48,0x48);
}

byte Mousey::Pixel_Data_Read()
{
	b = readDNS(0x48);
	return b;
}

byte Mousey::readDNS(byte outByte){
  int i;
  byte inByte;
  for (i=7; i>=0; i--){        		//choose bit send
    digitalWrite(SCK,LOW);     		//setup on falling edge
    digitalWrite(SDIO, (bitRead(outByte,i)));	//send bit
    digitalWrite(SCK,HIGH);    		//DNS samples on rising edge
  }
  delayMicroseconds(20);		// wait for ADNS to get hold of data line
  pinMode(SDIO,INPUT);         		//get ready to read
  delayMicroseconds(80);
  for (i=7; i>=0; i--){        		//choose bit to store
    digitalWrite(SCK,LOW);     		//DNS sets up on falling edge
    digitalWrite(SCK,HIGH);    		//sample on rising edge
    bitWrite(inByte,i,(digitalRead(SDIO)));	//get bit
  }
  pinMode(SDIO,OUTPUT);		//reset SDIO for next time
  return inByte;			//return byte
}// end readDNS



void Mousey::writeDNS(byte high, byte low){

  word outWord = word(high,low);  	//load bytes into the chute
  bitSet(outWord,15);               		//we want to write data
  for (int i=15; i>=0; i--){    		//choose bit MSB
    digitalWrite(SCK,LOW);      		//setup on falling edge
    digitalWrite(SDIO, (bitRead(outWord,i)));    	//send bit
    digitalWrite(SCK,HIGH);
  }
}

void Mousey::setPins()
{
	pinMode(LEFT, INPUT);
  pinMode(RIGHT, INPUT);
  pinMode(HID_SELECT, INPUT);
  pinMode(WHEEL_A, INPUT);
  pinMode(WHEEL_B, INPUT);
	for(int i=0; i<2; i++){
    pinMode(wheel[i],INPUT);
  }
  // attachInterrupt(digitalPinToInterrupt(WHEEL_A), encode, CHANGE);
}

void Mousey::eventSerial(){
  char inChar;
  if(Serial.available()){
    inChar = Serial.read();

    switch(inChar){

      case 'h':
        hid = digitalRead(HID_SELECT);
        Serial.print("HID = "); Serial.println(hid);
        break;

      default:
        break;
    }
  }
};

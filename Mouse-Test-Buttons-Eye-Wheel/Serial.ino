

void eventSerial(){
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
}


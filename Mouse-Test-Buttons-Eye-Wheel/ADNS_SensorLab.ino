

void checkEye() {
  eye.getMouseEyeDelta();      // update deltaX and deltaY variables
  if (eye.deltaX != 0 || eye.deltaY != 0) { //when mouse is moving
    if (hid) {
      updateMouse = true;
    } else {
      Serial.print(eye.deltaX, DEC);               //when mouse is moving
      Serial.print("\t");                          //pirnt the delta X and Y
      Serial.println(eye.deltaY, DEC);
    }
  }
}

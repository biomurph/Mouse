# Mouse Library Tools
Here is information about the user accessible functions in the Mousey library. The format of the data that is sent to the computer is determined by the HID select switch on the PCB. When the switch is set to `!HID` the mouse will send ASCII data to a serial terminal at 115200 baud whenever a mouse event occurs. When the switch is set to `HID` the mouse will use `Mouse.move`, `Mouse.pressed`, and `Mouse.released` to send mouse event data to the computer.

## update()
update checks all of the mouse inputs and sends relevant data to the computer if the buttons are pressed or released, if the mouse wheel moves, or if the mouse itself moves. It has proved to be important to have a delay in the loop when using the Mousey library, or else the mouse will overload the computer HID receiver and it will reduce performance. Experiment has shown that a delay of 5-10 milliseconds is good enough.

## checkEye()
Performs the necessary functions to update the `deltaX` and `deltaY` variables if they have changed, and sets the `mouseMoved` variable if that is so.

## checkWheel()
Checks to see if the `checkWheel` flag has been set by the interrupt service routine and sets the `mouseMoved` variable if that is so. The variable `deltaWheel` will hold the most recent wheel move data.

## checkButtons()
Reads the mouse buttons with a timed debounce routine and if there is a change in any of the button states, it sends data to the computer.

## Wheel Encoder
The mouse wheel encoder is of the digital switch type. There is an interrupt service routine called `encode()` which is triggered any time one of the encoder pins change state. The function `checkWheel()` will set the variable `wheelMoved` to true if the mouse wheel has moved, and the variable `deltaWheel` will contain the movement data.

## ADNS2620 Functions
The ADNS2026 Optical Mouse Sensor is at the heart of this open source computer mouse project. The Mousey library contains user accessible functions to access it's power. Here's a list of those functions and what they do. A copy of the ADNS2620 Datasheet can be found in the Hardware folder of this repository.

**NOTE: The ADNS2620 has gone EOL and is no longer available. I am looking into ICs from [PixArt](http://www.pixart.com.tw/index.asp) and will update this repository with a suitable replacement sensor soon.**

### getMouseEyeDelta()
This function updates the variables `deltaX` and `deltaY` with the latest relative movement data in 8 bit 2's compliment format.

### byte Config_Read()
Returns the value of the Configuration register.

### Config_Write(byte)
Writes a byte to the Configuration register.

### byte Status()
returns the value of the Status register. Status register contains the part ID and the Awake bit.

### int Squal()
Returns the value of the Squal register. Squal holds the Surface Quality value, which is a measure of the number of features visible by the sensor. The range is from 0 to 510.

### byte Max_Pixel()
Returns the maximum pixel value in the frame. The range is from 0 to 63.

### byte Min_Pixel()
Returns the minimum pixel value in the frame. The range is from 0 to 63.

### int Pixel_Sum();
Read this register is used to find the average pixel value. Refer to the datasheet inside the Hardware folder for more information about this register.

### word Shutter();
Returns the duration of the shutter open time in clock cycles. Refer to the datasheet inside the Hardware folder for information on how to derive the frame rate.

### short Frame_Period_Read();
### Frame_Period_Write(short);
These functions can be used to optimize performance when the mouse is over dark surfaces. RTDS.

### void Pixel_Data();
Any writes to this register will set the ADNS pointer so that the next read will return the value of the first pixel in the frame. Use Pixel_Data_Read to get pixel data.

### byte Pixel_Data_Read();
After writing to Pixel_Data, use this function to read the values of the individual pixels in a frame. Values range from 0 to 63. There are 324 pixels in the frame.

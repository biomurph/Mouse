This Read Me is for Rachel's Electronics Mouse Eye Library. 
Written by Joel Murphy, Fall 2010
This Library offers full access to all the functionality 
of the Avago ADNS2620 at the heart of the Mouse Eye.
Use of the Library is discribed here.


First, connect the SDIO and SCK lines from the Mouse Eye to the arduino.
Any digital pins (2...13) will work for this connection.

To creat an instance of the Mouse Eye:
	MouseEye yourName(int SCK, ing SDIO);

This library sets up 2 variables and updates them through user functions. 

	.deltaX	char	holds change in X since the last time you ran .getMouse()
	.deltaY	char	holds change in Y since the last time you ran .getMouse()
	

>>>>>>   USER FUNCTIONS   <<<<<<<

	yourName.getMouse();

This function updates the variables .deltaX and .deltaY when you call it.
Variables will hold the change since the last time you called .getMouse().
Calling .getMouse() clears the X and Y registers.
Movement distance result is encoded as a 2's compliment number. The char type resolves this.


	yourName.Cofig_W(byte);

Writes a byte to the configuration register. Configuration register bits are:

	bit 7	Reset		0: no effect	1: reset the part
	bit 6	Power Down	0: normal operation	1: power down
	bit 5	Shutter Mode	0: Shutter Mode Off	1: Shutter Mode On
	bit 4...1	RESERVED
	bit 0	Forced Awake	0: Normal		1: Always Awake

Shutter Mode Off means the LED is always on even if no movement up to 1 second
Shutter Mode On means LED only on when electronic shutter is open


	byte yourName.Config_R();

Reads and returns the Configuration byte.


	byte yourName.Status();

Returns a byte that contains the product ID and mouse state data

	bits 7...5 		= Product ID  (010)
	bit 1		= Asleep/Awake  (0/1)


	byte yourName.Squal();

Returns a byte that reflects the surface quality of what the Mouse Eye sees.
This number x2 is the number of visible features on the surface. 
It is useful to read this register if you are finding the ideal distance between you mouse and the surface it is looking at.


	byte = yourName.Max_P();

Maximum gray scale value of a pixel in the current frame. Range = 0 to 63.


	byte = yourName.Min_P();

Minimum gray scale value of a pixel in the current frame. Range = 0 to 63.


	byte = yourName.Pixel_Sum();

Returns the average pixel gray scale value. Range from 0 to 63.


	word = yourName.Shutter();

Length of time the shutter is open in clock cycles. The sensor adjusts shutter to keep average and maximum pixel values within normal operating range. Value may change. Each time it changes, it changes by +- 1/16 of current value.


	void yourName.F_Period_W(byte);

Writes a byte to the Frame_Period register. Default value is 194. For dark surfaces, use a lower number.
see the datasheet for more details [http://www.rachelselectronics.com/Datasheets/ADNS-2620.pdf]


	byte yourName.F_Period_R();

Reads the value in the Frame_Period Register.


	your name.Pixel_Data_R();

Writes a byte to the Pixel_Data register to initiate frame capture and pixel dump. 
This command should be preceeded by a write of 1 to the Config register set the mouse in Awake mode.
Then there should be 324 successive reads from this register using yourName.Pixel_Data_R().
Here is an example use of the Pixel_Data commands:


	MoueseEye Mouse(int SCK, int SDIO);	// create instance of MouseEye

	byte P_data [324];			// byte array to hold grayscale data

	void setup(){
	Serial.begin (9600);
	}

	void loop(){
		//some event triggers a call to dumpPixels();
	}

	void dumpPixels(){
	    Mouse.Config_W(1);             	// force awake
	    Mouse.Pixel_Data();		// writes a byte to initiate pixel dump
	    for (int i=0; i<324; i++){
	      P_data[i] = Mouse.Pixel_Data_R();	//read grayscale data
	    }  
	    for (int i=0; i<324; i++){
	      Serial.print(P_data[i]); 		// display grayscale data
	    }
	    Mouse.Config_W(0);              	// undo force awake
	  }

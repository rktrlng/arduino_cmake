Arduino cmake library
=====================

The Arduino library with the ease of cmake. Based on Arduino version 1.0.3. Use this if you want to program your Arduino without using the Arduino IDE, or if your Arduino is attached to a computer that runs headless. For example, if you use the Gertboard on a headless Raspberry Pi.

Supports 'standard' Arduino (Duemilanove), 'Leonardo', the 12MHz ATmega328p on the 'Gertboard' (on the Raspberry Pi with customized avrdude), and custom boards with supported AVR chips.

Instructions
------------

To make the library and example code:
```
mkdir build
cd build 
cmake .. 
make 
```

To show the options how to upload your firmware:
```
make help
```

Use with Raspberry Pi
---------------------

Make sure you also installed Gordon's patched avrdude. <https://projects.drogon.net/raspberry-pi/gertboard/>

Changed in Arduino library
--------------------------

- Added in arduino/libraries/softwareSerial/SoftwareSerial.cpp:
	- started table for 12 MHz, but unfinished and untested (Don't use with 12 MHz Gertboard. It's mainly there to avoid errors).
- Fixed in arduino/libraries/Wifi/WiFiClient.cpp:
	- include "utility/socket.h"
- Added in arduino/core/main.cpp (This is for custom boards without proper fuses set):
	- include "avr/power.h"
	- clock_prescale_set(clock_div_1);
- Added in arduino/core/:
	- malloc.c


Have fun!

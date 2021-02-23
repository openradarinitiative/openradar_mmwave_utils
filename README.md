# MiniRadar source

Repository for TI MMWave utils and simple processing.  
This repository contains:
* A dirty linux port of TI's MMWave example
* A dirty linux port of TI's DCA1000 example
* Example python sofware for radar processing using CUPY

## Setup and get started
Perform the following steps to get started:
### Install dependencies:
Install the dependencies as described in [installation instructions](./docs/install.md).  
### Connect the radar
* Connect the micro-USB port on the DCA1000 to your system
* Connect the AWR2243 to a 5V barrel jack
* Set power connector on the DCA1000 to **RADAR_5V_IN**
* Put the device in SOP0
  * Jumper on SOP0, all others disconnected
* Connect the RJ45 to your system
* **Set a fixed IP to the local interface: 192.168.33.30**


### Fix the user priviliges:
```
sudo touch /etc/udev/rules.d/99-libftdi.rules 
sudo gedit /etc/udev/rules.d/99-libftdi.rules 
```
Add the following line:
```
SUBSYSTEM=="usb", ATTR{idVendor}=="0451", ATTR{idProduct}=="fd03", GROUP="usb", MODE="0664"
```
Then create the group and add your user:
```
sudo useradd -G usb $USER$
sudo usermod -a -G usb $USER$
```
### Build and run the code
There are two utils that need to be built:
* MMWavelink - sets up the radar
* DCA1000 - Starts the stream
  
#### Build and run the MMWavelink code
To build and setup the code, follow the common CMAKE-way of doing it:
```
cd setup_radar  
mkdir build
cd build
cmake ..
make -j4
```
And then, run the following to setup the radar:
```
sudo ./setup_radar
```
This takes a bit of time, but the output should end with:
```
=========== mmWaveLink Example Application execution Successful ===========
```
A full printout of the output is [here](./docs/mmwavelink_setup.md)

#### Build and run the DCA1000 utils
To build and setup the code, follow the common CMAKE-way of doing it:
```
cd setup_dca_1000  
mkdir build
cd build
cmake ..
make -j4
```

And then, run the following to setup the DCA1000 to stream:
```
./setup_dca_1000
```
The output should be:
```
RDFCard Configure RDFCard_FPGA sendt!
Sendt message

FPGA Configuration command : Success
Handshake sendt!
Sendt message
Start Record Data sendt
Sendt message
```
And the DCA1000 should start blinking - which is a great sign!
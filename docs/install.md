# Install instructions
There are a few dependencies to using this library. 
## Dependencies
You'll need FD2XX.  
Download it from here:

Linux desktop:
https://www.ftdichip.com/Drivers/D2XX/Linux/libftd2xx-x86_64-1.4.8.gz  
Jetson Xavier:
https://www.ftdichip.com/Drivers/D2XX/Linux/libftd2xx-arm-v8-1.4.8.gz 

If you are not certain, then just go to:  

https://www.ftdichip.com/Drivers/D2XX.htm

Then you'll need to install the library. 

```
cd ~/Downloads/libftd2xx-x86_64-1.4.8/release 
sudo cp ftd2xx.h /usr/include  
sudo cp WinTypes.h /usr/include  
cd /usr/local/include  
sudo ln -s /usr/include/ftd2xx.h ftd2xx.h
sudo ln -s /usr/include/WinTypes.h WinTypes.h
cd ~/Downloads/libftd2xx-x86_64-1.4.8/release/build
sudo cp libftd2xx.so.1.4.8 /usr/local/lib
cd /usr/local/lib
sudo ln -s libftd2xx.so.1.4.8 libftd2xx.so
cd /usr/lib
sudo ln -s /usr/local/lib/libftd2xx.so.1.4.8 libftd2xx.so
```
For Xavier, its very similar.


## Possible dependencies:

```
sudo apt-get install libtool
sudo apt-get install autoconf
sudo apt-get install texinfo
sudo apt-get install libusb-dev
```

```
================= mmWaveLink Example Application ====================

====================== SPI Mode of Operation ======================

AR-DevPack-EVM-012 A
AR-DevPack-EVM-012 B
AR-DevPack-EVM-012 C
AR-DevPack-EVM-012 D
Device map 1 : SOP 4 mode successful

Device map 1 : Device reset successful

rlDeviceEnable Callback is called by mmWaveLink for Device Index [0]

MSS CPU Fault

mmWave Device Power on success for deviceMap 1 

========================== Firmware Download ==========================

Meta Image download started for deviceMap 1

 Download in Progress: 0%..10%..20%..30%..40%..50%..60%..70%..80%..90%..Done!

Meta Image download complete ret = 0

Firmware update successful for deviceMap 1 

=====================================================================

CRC Type set for MasterSS success for deviceMap 1 

RF Version [ 2. 2. 0.13] 
MSS version [ 2. 2. 1. 7] 
mmWaveLink version [ 2. 2. 0. 2]

RF Patch Version [ 0. 0. 0. 0] 
MSS Patch version [71.11.14.10]

Lot Number [3730844] 
Wafer Number [24] 
Die Coordinates in Wafer ([42], [8]) 

Radar/RF subsystem Power up successful for deviceMap 1 

======================Basic/Static Configuration======================

Calling rlSetChannelConfig With [15]Rx and [7]Tx Channel Enabled 

Channel Configuration success for deviceMap 1

Calling rlSetAdcOutConfig With [2]ADC Bits and [0]ADC Format 

AdcOut Configuration success for deviceMap 1

Calling rlRfSetLdoBypassConfig With Bypass [0] 

LDO Bypass Configuration success for deviceMap 1

Data format Configuration success for deviceMap 1

Low Power Configuration success for deviceMap 1 

AsyncEvent Configuration success for deviceMap 1 

Basic/Static configuration success for deviceMap 1 

Async event: RF-init calibration status 

RF Initialization/Calibration successful for deviceMap 1 

==================Programmable Filter Configuration==================

Calling rlRfSetProgFiltConfig with 
coeffStartIdx[0]
progFiltLen[14] GHz
progFiltFreqShift[100] MHz/uS 

Programmable Filter Configuration success for deviceMap 1 

Calling rlRfSetProgFiltCoeffRam with 
coeffArray0[-876]
coeffArray1[-272] GHz
coeffArray2[1826] MHz/uS 

Programmable Filter coefficient RAM Configuration success for deviceMap 1 

======================FMCW Configuration======================

Calling rlSetProfileConfig with 
ProfileId[0]
Start Frequency[77.200256] GHz
Ramp Slope[19.987822] MHz/uS 

Got rlSetProfileConfig with 
ProfileId[0]
Start Frequency[77.200256] GHz
Ramp Slope[19.987822] MHz/uS 

Profile Configuration success for deviceMap 1 

Got [1] chirpConfigs to read
Calling rlSetChirpConfig with 
ProfileId[0]
Start Idx[0]
End Idx[0] 
 txEnable[1]
startFreqVar [0] 
 idletimeVar[0] 
 freqSlopeVar [0]  
 adcstarttime [0]

Got rlgetChirpConfig with 
ProfileId[0]
Start Idx[0]
End Idx[0] 
 txEnable[1]
startFreqVar [0] 
 idletimeVar[0] 
 freqSlopeVar [0]  
 adcstarttime [0] 

Chirp Configuration success for deviceMap 1 

==================Data Path(LVDS/CSI2) Configuration==================

Calling rlDeviceSetDataPathConfig with HSI Interface[1] Selected 

Data Path Configuration successful for deviceMap 1 

Calling rlDeviceSetDataPathClkConfig with HSI Data Rate[1] Selected 

MMWL_hsiDataRateConfig success for deviceMap 1

Calling rlDeviceSetHsiClk with HSI Clock[9] 

MMWL_setHsiClock success for deviceMap 1

CSI2/LVDS Clock Configuration success for deviceMap 1 

LaneConfig success for deviceMap 1

LvdsLaneConfig success for deviceMap 1

CSI2/LVDS Lane Configuration success for deviceMap 1 

======================================================================

Calling rlSetFrameConfig with 
Start Idx[0]
End Idx[0]
Loops[255]
Periodicity[20]ms 

GotFrameConfig with 
Start Idx[0]
End Idx[0]
Loops[255]
Periodicity[20]ms 

Frame Configuration success for deviceMap 1 

======================================================================

Async event: Frame trigger 

Sensor Start successful for deviceMap 1 

======================================================================

=========== mmWaveLink Example Application execution Successful ===========
```
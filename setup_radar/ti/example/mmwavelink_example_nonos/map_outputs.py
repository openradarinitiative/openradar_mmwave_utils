import numpy as np




profileId=0;
pfVcoSelect=2;
startFreqConst=1439117143;
idleTimeConst=1000;
adcStartTimeConst=600;
rampEndTime=6000;
txOutPowerBackoffCode=0;
txPhaseShifter=0;
freqSlopeConst=414;
txStartTime=0;
numAdcSamples=256;
digOutSampleRate=10000;
hpfCornerFreq1=0;
hpfCornerFreq2=0;
rxGain=30;


chirpStartIdx=0;
chirpEndIdx=0;
profileIdCPCFG=0;
startFreqVar=0;
freqSlopeVar=0;
idleTimeVar=0;
adcStartTimeVar=0;
txEnable=1;

chirpStartIdxFCF=0;
chirpEndIdxFCF=0;
frameCount=0;
loopCount=255;
periodicity=3570000;
triggerDelay=0;
numAdcSamples=512;
triggerSelect=1;

if __name__ == "__main__":
    print(startFreqConst*(3.6e9 / 2**26) / 1e9)
    #Reverese:
    desired_fc0 = 77e9
    print(np.ceil(desired_fc0/(3.6e9 / 2**26)) )
    print("Idletime:")
    print((idleTimeConst*10e-9)*1e6)
    # desired_Idletime = 30e-6
    # print("Desired Idletime:")
    # print(desired_Idletime/10e-9)
    print("rampEndTime")
    print((rampEndTime*10e-9)*1e6)
    print("freqSlopeConst")
    print((freqSlopeConst)*((3.6e6 * 900) / 2**26)/1e3)
    # desired_slope = 19.988
    # print(np.floor((desired_slope*1e3)/((3.6e6 * 900) / 2**26)))

    print("CHIRP Period:")
    total_time = loopCount*((rampEndTime*10e-9)+(idleTimeConst*10e-9))+300e-9
    print(total_time)
    print("In periodicity:")
    print(total_time/(5e-9))




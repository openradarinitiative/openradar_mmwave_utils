-- Radar Settings (Original)
-- 1 Tx 4 Rx | real samplint

COM_PORT = 18 -- 12 for 1843 on Edwin laptop (Application Port)
RADARSS_PATH = "C:\\ti\\mmwave_studio_02_00_00_02\\mmWaveStudio\\Scripts\\..\\..\\rf_eval_firmware\\radarss\\xwr18xx_radarss.bin"
MASTERSS_PATH = "C:\\ti\\mmwave_studio_02_00_00_02\\mmWaveStudio\\Scripts\\..\\..\\rf_eval_firmware\\masterss\\xwr18xx_masterss.bin"
-- SAVE_DATA_PATH = "C:\\ti\\mmwave_studio_02_00_00_02\\mmWaveStudio\\PostProc\\adc_data.bin"
SAVE_DATA_PATH = "C:\\data\\adc_data.bin"
DUMP_DATA_PATH = "C:\\data\\adc_data_RAW_0.bin"
PKT_LOG_PATH  = "C:\\data\\pktlogfile.txt"

--------------------------------------------

-------- Radar and waveform settings --------
NUM_RX = 4

-- ProfileConfig
START_FREQ = 78.273143 -- GHz
IDLE_TIME = 5 -- us
RAMP_END_TIME = 25 -- us
ADC_START_TIME = 6 --us
FREQ_SLOPE = 24.140 -- MHz/us
ADC_SAMPLES = 182
SAMPLE_RATE = 20000 -- ksps
RX_GAIN = 34 -- dB

-- FrameConfig
START_CHIRP_TX = 0
END_CHIRP_TX = 3
NUM_FRAMES = 0 -- Set this to 0 to continuously stream data
CHIRP_LOOPS = 252    
PERIODICITY = 50  -- ms
-----------------------------------------------------------

-------- THIS IS FINE --------
ar1.FullReset()
ar1.SOPControl(2)
ar1.Connect(COM_PORT,921600,1000)
------------------------------

ar1.Calling_IsConnected()
ar1.SelectChipVersion("AR1642")
ar1.frequencyBandSelection("77G")
ar1.SelectChipVersion("XWR1843")
ar1.SelectChipVersion("AR1642")
ar1.SelectChipVersion("XWR1843")

-------- DOWNLOAD FIRMARE --------
ar1.DownloadBSSFw(RADARSS_PATH)
ar1.GetBSSFwVersion()
ar1.GetBSSPatchFwVersion()
ar1.DownloadMSSFw(MASTERSS_PATH)
ar1.PowerOn(0, 1000, 0, 0)
ar1.RfEnable()
ar1.GetBSSFwVersion()
--------

-------- STATIC CONFIG --------
ar1.ChanNAdcConfig(1, 1, 1, 1, 1, 1, 1, 2, 0, 0)
ar1.LPModConfig(0, 0)
ar1.RfInit()
--------------------------------------

-------- DATA CONFIG --------
ar1.DataPathConfig(513, 1216644097, 0)
ar1.LvdsClkConfig(1, 1)
ar1.LVDSLaneConfig(0, 1, 1, 0, 0, 1, 0, 0)
-----------------------------------

-------- SENSOR CONFIG --------
ar1.ProfileConfig(0, START_FREQ, IDLE_TIME, ADC_START_TIME, RAMP_END_TIME, 0, 0, 0, 0, 0, 0, FREQ_SLOPE, 0, ADC_SAMPLES, SAMPLE_RATE, 0, 0, RX_GAIN)
ar1.ChirpConfig(0, 3, 0, 0, 0, 0, 0, 1, 0, 0)
ar1.FrameConfig(START_CHIRP_TX, END_CHIRP_TX, NUM_FRAMES, CHIRP_LOOPS, PERIODICITY, 0, 0, 1)
-------------------------------------



-------- ETHERNET --------
ar1.SelectCaptureDevice("DCA1000")
ar1.CaptureCardConfig_EthInit("192.168.33.30", "192.168.33.180", "12:34:56:78:90:12", 4096, 4098)
ar1.CaptureCardConfig_Mode(1, 2, 1, 2, 3, 30)
ar1.CaptureCardConfig_PacketDelay(25)
--------------------------------

ar1.StartFrame()

module Hello where

import CLaSH.Prelude
import ControllerTypes

topEntity :: Signal EthernetIn -> (Signal QuadFreqs, Signal EthernetOut)
topEntity ethernetIn = (rfDrives, ethernetOut)
    where
        (daqControl, driverControl) = parseEthernet ethernetIn -- no state
        rfDrives = driver driverInit driverControl
        daqOut = daq daqInit daqControl
        ethernetDaqOut = packageDaqOut daqOut

parseEthernet :: EthernetIn -> (, Bool, (Bool, DriveIndex, DriveIndex, Vec DriveIndex QuadDrive))
parseEthernet input = (outputDaq, outputSynth, outputDriveData)
    where 
        o = parsePacket i
        
type DriverState = (Bool, (Unsigned 12), (Unsigned 20))        
type DriveUpdate = (Bool, DriveIndex, DriveIndex, Vec DriveIndex QuadDrive)        
type DriverControl = (DriveUpdate, SynthStatus)        
driver :: DriveState -> DriverControl -> (DriverState, Vec 4 (Signed 16))
driver state driveData = (stateNew, rfDrives)
    where
        (doUpdate, start, end, driveParamsVec) = driveData !! 0
        synthStatus = driveData !! 1
        (running, index, count) = state
        
synth :: (DriveIndex, DriveData) -> Bool -> ((DriveIndex, DriveData) QuadRf)
synth index run = (indexNew, rfDrive)
    where 
    indexNew
        | run == False    = 0    --reset and stop
        | otherwise       = indexNew + 1
    
driveData :: Vec driveDepth QuadDrive -> (Bool, DriveIndex, DriveIndex, Vec DriveIndex QuadDrive) -> (Vec driveDepth QuadDrive, QuadDrive)
driveData drives (write, start, end, drives) = (drivesNew, driveOut)
    where 
        drivesNew = 
            | write == False    = drives
            | otherwise = i
        o = sNew        
   
daq :: DaqData -> (Signed 12, Signed 12) -> (Signed 17, Signed 17) -> (DaqData, DaqOut)
daq currentData (dataIn1, dataIn2) (numRead1, numRead2) = (newData, (elemRemain1, elemRemain2, dataOut1, dataOut2))
    where 
                



        

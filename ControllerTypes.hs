module ControllerTypes where

import CLaSH.Prelude

type Elm  = Unsigned 8
type Pntr n = Unsigned (n + 1)
type Elms = Vec 4 Elm

type QuadDrive = (Drive, Drive, Drive, Drive)
type DriveIndex = Unsigned 10
driveDepth = 2^10

type DaqData = Vec 131072 (Signed 12), Vec 131072 (Signed 12)
type DaqOut = (Signed 17, Signed 17, Vec (Signed 17) (Signed 12), Vec (Signed 17) (Signed 12))

data Drive = Drive { a :: (Unsigned 4),  
                     b :: (Signed 2),  
                     c :: (Signed 2),  
                     d :: (Signed 2),  
                     t :: (Signed 2),  
                     amp :: (Signed 1)
                    } deriving (Show)   
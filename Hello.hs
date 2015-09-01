module Hello where

import CLaSH.Prelude

counter :: Signal (Unsigned 32)
counter = acc
    where 
        acc = register 0 (acc + 1)

scale :: Signal (Unsigned 32) -> Signal (Unsigned 4)
scale aCounter = slowCounter
    where 
        slowCounter = r <$> (quot aCounter 16777216)
        r a = resize a :: Unsigned 4
                
topEntity :: Signal (Unsigned 3) -> Signal (Unsigned 4)
topEntity a = scale counter

testInput :: Signal (Unsigned 3)
testInput = stimuliGenerator $(v [1 :: Unsigned 3, 2, 3, 1, 2, 3, 1, 2, 3, 1])

expectedOutput :: Signal (Unsigned 4) -> Signal Bool
expectedOutput = outputVerifier $(v [0 :: Unsigned 4, 0, 0, 0, 0, 0, 0, 0, 0, 0])
        





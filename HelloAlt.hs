module HelloAlt where

import CLaSH.Prelude

slowT :: (Unsigned 4, Unsigned 32) -> Unsigned 3 -> ((Unsigned 4, Unsigned 32), Unsigned 4)
slowT (slow, fast) reset = (newState, newSlow)
  where
    newState = (newSlow, newFast)
    newFast
        | (fast + 1) < 16777216   = fast + 1
        | otherwise               = 0    
    newSlow
        | newFast == 0   = slow + 1
        | otherwise      = slow

slow = slowT <^> (0, 0)

topEntity :: Signal (Unsigned 3) -> Signal (Unsigned 4)
topEntity a = slow a

testInput :: Signal (Unsigned 3)
testInput = stimuliGenerator $(v [1 :: Unsigned 3, 2, 3, 1, 2, 3, 1, 2, 3, 1])

expectedOutput :: Signal (Unsigned 4) -> Signal Bool
expectedOutput = outputVerifier $(v [0 :: Unsigned 4, 0, 0, 0, 0, 0, 0, 0, 0, 0])
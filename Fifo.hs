module Fifo where

import CLaSH.Prelude

pushToFifo s i = (sNew, o)

fifoL :: Signal (Elm,Bool,Bool) -> Signal (Bool,Bool,Elm)
fifoL = fifo `mealy` (0,0,replicate d4 0)       

fifo :: forall n e . (KnownNat n, KnownNat (n+1), KnownNat (2^n))
     => (Pntr n, Pntr n, Vec (2^n) e)
     -> (e, Bool, Bool)
     -> ((Pntr n,Pntr n,Vec (2^n) e),(Bool,Bool,e))
fifo (rpntr, wpntr, elms) (datain,wrt,rd) = ((rpntr',wpntr',elms'),(full,empty,dataout))
  where
    wpntr' | wrt       = wpntr + 1
           | otherwise = wpntr
    rpntr' | rd        = rpntr + 1
           | otherwise = rpntr

    mask  = resize (maxBound :: Unsigned n)
    wind  = wpntr .&. mask
    rind  = rpntr .&. mask

    elms' | wrt       = replace wind datain elms
          | otherwise = elms

    n = fromInteger $ snatToInteger (snat :: SNat n)

    empty = wpntr == rpntr
    full  = (testBit wpntr n) /= (testBit rpntr n) &&
            (wind == rind)

    dataout = elms !! rind
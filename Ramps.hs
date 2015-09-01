module Ramps where

import CLaSH.Prelude

counter = acc
    where 
        acc = register 0 (acc + 1)

timer length = mod counter length
        
phase a b c d t = a + b * (timer t) + c * (timer t) ^ 2 + d * (timer t) ^ 3




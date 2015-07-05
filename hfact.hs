{- Trivial Factorial Benchmark -- Haskell Version

   This software is in the public domain
-}
module Main where

import System.Environment
import System.Exit

fact :: (Eq a, Ord a, Num a) => a -> a
fact 0 = 1
fact 1 = 1
fact n = n * fact (n-1)

arg (n:[]) = putStrLn $ show $ fact (read n)
arg _ = putStrLn "Usage: hfact number" >> die
exit = exitWith ExitSuccess
die = exitWith (ExitFailure 1)

main = getArgs >>= arg >> exit
  

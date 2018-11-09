module Palindrome where

import Control.Monad
import System.Exit (exitSuccess)

main :: IO () 
main = forever $ do
    putStrLn "Enter a word that you think is a palindrome..."
    line1 <- getLine
    case (line1 == reverse line1) of
        True -> do
                putStrLn "It's a palindrome!" 
                exitSuccess
        False -> putStrLn "Nope!, try agian!"
                

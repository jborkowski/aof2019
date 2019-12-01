{-#  LANGUAGE OverloadedStrings #-}

module Lib
    ( loadInput
    , parse
    ) where


import System.IO  
import Control.Monad

loadInput :: String -> IO [Int]
loadInput path = do
    contents <- readFile path
    let someInt = map read  . lines $ contents
    return someInt

parse :: String -> [Int]
parse = fmap read . lines

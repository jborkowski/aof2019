module Main where

import Lib
import Day1

main :: IO ()
main = do
  input <- readFile "input1.txt"
  lines <- loadInput "input1.txt"
  let res1 = part1 lines
      res2 = part2 lines
  print ("Day 1, ex 1: " ++ show res1)
  print ("Day 1, ex 2: " ++ show res2)


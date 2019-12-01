module Day1 where

import Lib

fuelRequiredToLaunch :: Int -> Int
fuelRequiredToLaunch mass = mass `div` 3 -2

part1 :: [Int] -> Int
part1 = sum . map fuelRequiredToLaunch

recursiveSum :: Int -> Int -> Int
recursiveSum mass acc 
  | mass <= 0 = acc
  | otherwise = recursiveSum weight (acc + weight)
  where weight = fuelRequiredToLaunch mass

part2 :: [Int] -> Int
part2 = sum . map (\n -> recursiveSum n 0)
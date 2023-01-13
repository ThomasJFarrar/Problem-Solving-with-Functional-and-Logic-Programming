-- any imports go here
module Main where
import Data.Char
import Data.List
{-Begin Question 1.1-}
digits :: Int -> [Int]
digits = map digitToInt . show
{-End Question 1.1-}

{-Begin Question 1.2-}
joiner :: [Int] -> Int
joiner = read . concatMap show

remainder :: Int -> Int
remainder n = joiner (drop 2 (digits n)) `mod` joiner (take 2 (digits n))

isPar :: Int -> Bool
isPar n = remainder n == 0 && length (nub (digits n)) == length (digits n) && n `mod` 10 /= 0

pars :: [Int]
pars = filter isPar [1111..9999]
{-End Question 1.2-}

{-Begin Question 1.3-}
missingDigit :: [Int] -> Int
missingDigit n = joiner ([1..9] \\ n)

isParty :: (Int, Int) -> Bool
isParty (x,y) =  x `mod` (missingDigit (digits x ++ digits y)) == 0 && y `mod` (missingDigit (digits x ++ digits y)) == 0  && intersect (digits x) (digits y) == []

pairs :: [Int] -> [(Int, Int)]
pairs [] = []
pairs xs = [(x,y) | x <- xs, y <- xs]

partys :: [(Int, Int)]
partys = filter isParty (pairs pars)
{-End Question 1.3-}

-- any main functions for testing goes here
main = do
  print (digits 9124)
  print (isPar 2678)
  print (isParty (2754, 1836))
  print (partys)
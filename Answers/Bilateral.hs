-- any imports go here
module Main where
import Data.Char
import Data.List
{-Begin Question 2.1-}
number :: [Int] -> Int
number = foldl1' (\acc x -> acc * 10 + x)
{-End Question 2.1-}

{-Begin Question 2.2-}
splits :: [a] -> [([a],[a])]
splits xs = let x = length xs-1 in map (`splitAt` xs) [1..x]

possibles :: [([Int],[Int])]
possibles = concatMap splits (permutations [1..9])
{-End Question 2.2-}

{-Begin Question 2.3-}
shortest :: [Int] -> [Int] -> [Int]
shortest xs ys = if length xs <= length ys then xs else ys

digits :: Int -> [Int]
digits = map digitToInt . show

isAcceptable :: ([Int],[Int]) -> Bool
isAcceptable (x,y) = let p = digits (number x * number y) in last (shortest x y) == 3  && last p == 4 && reverse p == p

acceptables :: [([Int],[Int])]
acceptables = filter isAcceptable possibles
{-End Question 2.3-}

-- any main functions for testing goes here
main = do
  print (number [9,1,2,4])
  print (splits [1,2,3,4])
  print (isAcceptable ([7,1,6,3], [5,9,2,4,8]))
  print acceptables

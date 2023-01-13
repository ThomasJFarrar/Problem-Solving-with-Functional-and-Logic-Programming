main :: IO ()
main
   =  do mark11
         mark12
	 mark13

mark11 :: IO ()
mark11
  =  do  putStr "Q1.1: " 
         putStr (show (length digitOKs) ++ "/" ++ show (length digitTests)) 
	 putStr "\n"

digitOKs :: [(Int, [Int])]
digitOKs
   =  [ (d,ds) | (d,ds) <- digitTests, digits d == ds ]

digitTests :: [(Int, [Int])]
digitTests
  =  [ (6, [6]), (12, [1,2]), (432, [4,3,2]), (9124, [9,1,2,4]), (7766, [7,7,6,6])
     ]

mark12 :: IO ()
mark12
  =  do  putStr "Q1.2: "
         putStr (show (length isParOKs) ++ "/" ++ show (length isParTests)) 
         putStr (" + ")
         putStr (if isParsOK then "5/5" else "0/5") 
	 putStr "\n"

isParOKs :: [Int]
isParOKs
  =  [ p | p <- isParTests, isPar p ]

isParTests :: [Int]
isParTests
  =  [ 1236, 1378, 1632, 2754, 4692 ]

isParsOK :: Bool 
isParsOK
  =  sort pars ==
          [1236,1248,1284,1296,1326,1352,1365,1378,1428,1456,1498,
           1632,1648,1734,1768,1785,1836,1854,1872,1938,1957,1976,
           2163,2184,2346,2369,2496,2678,2754,2781,2856,2958,2987,
           3162,3264,3296,3468,3672,3876,3978,4182,4386,4692,4896]

mark13 :: IO ()
mark13
  =  do  putStr "Q1.3: "
         putStr (show (length isPartyOKs) ++ "/" ++ show (length isPartyTests)) 
         putStr (" + ")
         putStr (if isPartysOK then "5/5" else "0/5") 
	 putStr "\n"



isPartyOKs :: [(Int,Int)]
isPartyOKs
  =  [ p | p <- isPartyTests, isParty p ]

isPartyTests :: [(Int,Int)]
isPartyTests
  =  [ (1456,3978), (1836,2754), (2754,1938), (3978,1456), (3672,1854) ]

isPartysOK :: Bool 
isPartysOK
   = np == [(1456,3978),(1734,2958),(1785,2496),
            (1785,4692),(1836,2754),(1854,3672),
            (1938,2754)]
     where
     cp = map canpair partys
     sp = sort cp 
     np = nub sp
     canpair (x,y)
       = (min x y, max x y)

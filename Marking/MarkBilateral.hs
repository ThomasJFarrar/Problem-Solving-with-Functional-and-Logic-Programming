main :: IO ()
main
   =  do mark21
         mark22
	 mark23

mark21 :: IO ()
mark21
  =  do  putStr "Q2.1: " 
         putStr (show (length numberOKs) ++ "/" ++ show (length numberTests)) 
	 putStr "\n"

numberOKs :: [([Int],Int)]
numberOKs
   =  [ (ds,d) | (ds,d) <- numberTests, number ds == d ]

numberTests :: [([Int],Int)]
numberTests
  =  [ ([6],6), ([1,2],12), ([4,3,2],432), ([9,1,2,4],9124), ([7,7,6,6],7766)
     ]

mark22 :: IO ()
mark22
  =  do  putStr "Q2.2: "
         putStr (if isSplitsOK then "5/5" else "0/5") 
         putStr (" + ")
         putStr (if possiblesOK then "5/5" else "0/5")
         putStr "\n"

isSplitsOK :: Bool 
isSplitsOK
  =  sort (splits [1,2,3,4,5,6]) ==
	  [ ([1],[2,3,4,5,6]), ([1,2],[3,4,5,6]), ([1,2,3],[4,5,6]),
            ([1,2,3,4],[5,6]), ([1,2,3,4,5],[6]) ]

possiblesOK :: Bool
possiblesOK
   =  length possibles == 2903040

mark23 :: IO ()
mark23
  =  do  putStr "Q2.3: "
         putStr (show (length isAcceptableOKs) ++ "/" ++ 
                 show (length isAcceptableTests))
         putStr (" + ")
         putStr (if isAcceptablesOK then "5/5" else "0/5") 
	 putStr "\n"

isAcceptableOKs :: [([Int],[Int])]
isAcceptableOKs
  =  [ p | p <- isAcceptableTests, isAcceptable p ]
          
isAcceptableTests :: [([Int],[Int])]
isAcceptableTests
  =  [ ([1,4,5,3],[2,9,6,7,8]),
       ([7,1,6,3],[5,9,2,4,8]),
       ([2,3],[1,7,6,9,5,4,8]),
       ([1,7,6,9,5,4,8],[2,3]),
       ([5,9,2,4,8],[7,1,6,3]) ]

isAcceptablesOK :: Bool 
isAcceptablesOK
  =  sort acceptables ==
          [([1,4,5,3],[2,9,6,7,8]),([1,7,6,9,5,4,8],[2,3]),
           ([2,3],[1,7,6,9,5,4,8]),([2,9,6,7,8],[1,4,5,3]),
           ([5,9,2,4,8],[7,1,6,3]),([7,1,6,3],[5,9,2,4,8])]	
     ||   
     sort acceptables ==
	  [([1,4,5,3],[2,9,6,7,8]),([7,1,6,3],[5,9,2,4,8]),
           ([2,3],[1,7,6,9,5,4,8])]         

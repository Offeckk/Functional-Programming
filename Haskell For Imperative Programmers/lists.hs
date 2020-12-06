sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sum xs

evens:: [Int] -> [Int]
evens [] = []
evens (x:xs)
 |mod x 2 == 0 = x : evens xs
 |otherwise = evens xs

isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = (x <= y) && isAsc (y:xs)

main = do
 print $ isAsc [1,2,3,4]
 print $ evens [1,2,3,4]
 print $ sumList [1,2,3,4]
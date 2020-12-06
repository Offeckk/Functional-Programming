minElem::[Int]->Int
minElem [] = 0
minElem [x] = x
minElem (x:y:xs) 
 |x > y = minElem (y:xs)
 |x < y = minElem (x:xs)
 |x == y = minElem (x:xs)

main = do

    input <- getLine
    let inputList = map (:[]) input
    let intList = map (read::String->Int) inputList

    print $ minElem intList
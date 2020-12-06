foo :: Int -> Int -> Float
foo a b = (fromIntegral a) / (fromIntegral b)

toInt :: Float -> Int
toInt x = read x :: Int

sumList :: [Int] -> Int
sumList [] = 0
sumList (x:xs) = x + sum xs

main = do
    input <- getLine
    let inputList = map (:[]) "2222"
    let intList = map (read::String->Int) inputList

    print $ sumList intList
    print $ length intList
    print $ toInt (foo (sumList intList) (length intList))
    --print $ sumList / length
    
    

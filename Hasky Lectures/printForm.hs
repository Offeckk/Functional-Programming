printNTimes :: Int -> String -> IO ()
printNTimes n string = 
    if n == 0
    then return ()
    else do
        putStr (string)
        printNTimes (n - 1) string

printTriangle :: Int -> String -> IO ()
printTriangle n string =
    if n == 0
    then return ()
    else do
        putStr (string)
        printNTimes (n - 1) string
        putStrLn ("")
        printTriangle (n - 1) string

printReverseTriangle :: Int -> Int -> String -> IO ()
printReverseTriangle n i string =
    if i > n
    then return ()
    else do
        printNTimes (i) string
        putStrLn ("")
        printReverseTriangle n (i + 1) string

main = do
 input1 <- getLine
 let n = (read input1 :: Int)
 printTriangle n "*"
 printReverseTriangle n 1 "#"
newtype NoQuotes = NoQuotes String

instance Show NoQuotes where show (NoQuotes str) = str


main = do
    input1 <- getLine
    input2 <- getLine
    input3 <- getLine
    input4 <- getLine
    input5 <- getLine
    input6 <- getLine

    let a1 = (read input1 :: Integer)
    let a2 = (read input2 :: Integer)
    let b1 = (read input3 :: Integer)
    let b2 = (read input4 :: Integer)
    let c1 = (read input5 :: Integer)
    let c2 = (read input6 :: Integer)

    if (c1 >= a1) && (c1 <= b1) && (c2 >= a2) && (c2 <= b2)
        then print (NoQuotes "INSIDE")
        else print (NoQuotes "OUTSIDE")
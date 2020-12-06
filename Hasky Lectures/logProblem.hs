main = do
    input <- getLine
    let num = read input :: Integer
    print $ floor $ logBase 2 (fromIntegral num)
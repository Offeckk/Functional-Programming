module Main where


main :: IO ()
main = do
    input1 <- getLine

    let secret = (read input1 :: Integer)

    playGame secret

playGame :: Integer -> IO ()
playGame secret = do
                             input <- getLine
                             let guess = read input :: Integer

                             if guess == secret then
                                do putStrLn "You win"
                             else if guess < secret then
                                do putStrLn "Too small!"
                                   playGame secret
                             else do putStrLn "Too big!"
                                     playGame secret



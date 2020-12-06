import Text.Printf (printf)

main = do
    input1 <- getLine

    let radius = (read input1 :: Double)

    let area = pi * (radius ^ 2)

    printf "%.4f %s" area "\n"
    
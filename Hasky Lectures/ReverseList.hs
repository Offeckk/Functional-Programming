rev :: [a] -> [a]
rev = foldl (\acc x -> x : acc) []

main = do
    print $ rev [1,2,3,4,5]
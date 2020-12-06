fnr :: (Eq a) => a -> [a] -> [a]
fnr x [] = [x]
fnr x xs
    | x == head xs = xs
    | otherwise = x:xs

remdups :: (Eq a) => [a] -> [a]
remdups [] = []
remdups ys = foldr fnr [] ys

main = do
    print $ remdups [1,1,1,1,1,1,1,1,1,1,1,1,2,3,4,5,5,7,8]
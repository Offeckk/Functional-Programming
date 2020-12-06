mathExpression :: [Int] -> String
mathExpression [] = ""
mathExpression arr = 
    foldl (\x y -> concat ["(",x,"+",y,")"]) (show (head arr)) (map show (tail arr))

main = do
    let arr = []           
    print $ mathExpression arr

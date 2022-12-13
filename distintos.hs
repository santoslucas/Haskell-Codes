distintos :: [Int] -> Bool
distintos (a:x) 
 | x==[] = True
 | existe a x == True = False
 | existe a x == False = distintos x

existe :: Int -> [Int] -> Bool
existe n [] = False
existe n (a:x) 
        | n==a = True
        | otherwise = existe n x

existe :: Int -> [Int] -> Bool
existe x [] = False
existe x (a:n)
   | x == a = True
   | otherwise = existe x n
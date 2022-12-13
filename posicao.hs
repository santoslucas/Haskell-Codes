existe :: Int -> [Int] -> Bool
existe x [] = False
existe x (a:n)
   | x == a = True
   | otherwise = existe x n

posicao :: Int -> [Int] -> Int
posicao x [] = 0
posicao x (a:n)
   | existe x (a:n) == False = 0
   | x == a = 1
   | otherwise = (1 + (posicao x n))
contar :: [Int] -> Int
contar [] = 0
contar (a:n)
   | a < 0 = 1 + contar n
   | otherwise = contar n
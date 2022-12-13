maior :: [Int] -> Int
maior [] = 0
maior [a] = a
maior (a:n)
   | n==[] = a
   | a > maior n = a
   | otherwise = maior n
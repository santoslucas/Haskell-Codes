binario :: Int -> [Int]
binario a 
 | a == 0 = [0]
 | a == 1 = [1]
 | otherwise = binario (a `div` 2) ++ [mod a 2] 

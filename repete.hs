repete :: Int -> [Int] -> [Int]
repete 0 n = []
repete 1 n = n
repete x [] = []
repete x (a:n) = (duplicar x a) ++ (repete x n)

duplicar :: Int -> Int -> [Int]
duplicar 0 a = []
duplicar 1 a = [a]
duplicar x a = [a] ++ duplicar (x-1) a


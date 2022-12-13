linearizar :: [[Int]] -> [Int]
linearizar [] = []
linearizar (a:n) = a ++ (linearizar n)
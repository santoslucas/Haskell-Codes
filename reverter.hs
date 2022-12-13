reverter :: [Int] -> [Int]
reverter [] = []
reverter (a:n) = reverter n ++ [a]
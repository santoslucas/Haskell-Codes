intercalar :: [Int] -> [Int] -> [Int]
intercalar [] n = n
intercalar n [] = n
intercalar (a:m) (b:n)
  | a < b = [a] ++ intercalar m (b:n)
  | otherwise = [b] ++ intercalar (a:m) n 
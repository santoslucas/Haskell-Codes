reverter :: [Int] -> [Int]
reverter [] = []
reverter (a:n) = reverter n ++ [a]

metade :: [Int] -> Int -> [Int]
metade (a:n) x
  | length (a:n) == x = (a:n)
  | otherwise = metade n x

palindromo :: [Int] -> Bool
palindromo [] = False
palindromo [a] = True
palindromo n
  | ((metade n (length n)) == (metade (reverter n) (length n))) = True
  | otherwise = False
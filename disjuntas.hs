disjuntas :: [Int] -> [Int] -> Bool
disjuntas [] [] = True
disjuntas [] x = True
disjuntas x [] = True
disjuntas (a:m) (b:n)
  | (m == [] && n == []) = True
  | a == b = False
  | otherwise = ((disjuntas (a:m) n) && (disjuntas m (b:n)))
reverter :: [Int] -> [Int]
reverter [] = []
reverter (a:n) = reverter n ++ [a]

remover :: Int -> [Int] -> [Int]
remover 0 n = n
remover x (a:n) = remover (x-1) n

removerFim :: Int -> [Int] -> [Int]
removerFim 0 n = n
removerFim x n = (reverter ( remover x (reverter n)))
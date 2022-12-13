perfeito :: Int -> Bool
perfeito a 
 | a==verificarDiv a 1 = True
 | otherwise = False


verificarDiv :: Int -> Int -> Int
verificarDiv a b 
 | a==b = 0
 | (mod a b) == 0 = b + verificarDiv a (b+1) 
 | otherwise = verificarDiv a (b+1)
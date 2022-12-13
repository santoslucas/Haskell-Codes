primo :: Int -> Bool
primo a = verificarDiv a 2

verificarDiv :: Int -> Int -> Bool
verificarDiv a b 
 | a==0 || a==1 = False
 | a==b = True
 | (mod a b) == 0 = False 
 | otherwise = verificarDiv a (b+1)
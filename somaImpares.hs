somaImpares :: [Int] -> Int
somaImpares [] = 0
somaImpares (a:n)
   | verificarImpar a == True = a + somaImpares n
   | otherwise = 0 + somaImpares n


verificarImpar :: Int -> Bool
verificarImpar a 
  | (mod a 2)==1 = True
  | (mod a 2)==0 = False

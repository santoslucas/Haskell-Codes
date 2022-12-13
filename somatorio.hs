somatorio :: Int -> [Int] -> Int
somatorio 0 [] = 0
somatorio a (n:x)
 | existe 1 (n:x) = soma (compactar (ordena (geraLista [1] a)))
 | otherwise = soma (compactar (ordena (geraLista (n:x) a)))

soma :: [Int] -> Int
soma [] = 0
soma (a:x) = a + soma x

geraLista :: [Int] -> Int -> [Int]
geraLista [] a = []
geraLista (n:x) a = divisores a n n ++ geraLista x a

divisores :: Int -> Int -> Int -> [Int]
divisores 0 b c = []
divisores a b c
 | c == a = []
 | (mod c b)==0 = [c]++divisores a b (c+1)
 | otherwise = divisores a b (c+1)

maior :: [Int] -> Int
maior [] = 0
maior [a] = a
maior (a:n)
 | n==[] = a
 | a > maior n = a
 | otherwise = maior n

remove :: Int -> [Int] -> [Int]
remove x [] = []
remove x (a:n)
 | x == a = n
 | otherwise = [a] ++ remove x n

ordena :: [Int] -> [Int]
ordena [] = []
ordena n = ordena (remove (maior n) n) ++ [maior n] 

compactar :: [Int] -> [Int]
compactar [] = []
compactar [a] = [a]
compactar (a:b:n)
 | a==b = compactar (a:n)
 |otherwise = [a] ++ compactar (b:n)

existe :: Int -> [Int] -> Bool
existe x [] = False
existe x (a:n)
   | x == a = True
   | otherwise = existe x n
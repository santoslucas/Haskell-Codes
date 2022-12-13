substituir :: Int -> Int -> [Int] -> [Int]
substituir a b (x:y)
 | y==[] = if(a==x) then [b] else [x]
 | a == x = b:substituir a b y
 | a /= x = x:substituir a b y
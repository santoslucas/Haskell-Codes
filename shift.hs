shift :: Int -> [Int] -> [Int]
shift 0 n = n
shift x (a:n) = shift (x-1) (n ++ [a])
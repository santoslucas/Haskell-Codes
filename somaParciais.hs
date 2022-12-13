somaParciais :: [Int] -> [Int]
somaParciais [] = []
somaParciais [x] = [x]
somaParciais (a:b:n) = [a] ++ somaParciais ([a+b] ++ n)
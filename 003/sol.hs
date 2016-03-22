main = do 
    let n = 600851475143
    print $ maximum [x | x <- factors n, isPrime x]

isPrime :: Integer -> Bool
isPrime n = length (factors n) == 2

factors :: Integer -> [Integer]
factors n = let s = ceiling $ sqrt $ fromIntegral n
                lower = [x | x <- [1..s], n `mod` x == 0]
            in lower ++ [n `quot` y | y <- lower]

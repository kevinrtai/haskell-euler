main = do
    print $ [x | x <- [2..], isPrime x] !! 10000

isPrime :: Integer -> Bool
isPrime n = length (factors n) == 2

factors :: Integer -> [Integer]
factors n = let s = floor $ sqrt $ fromIntegral n
                lower = [x | x <- [1..s], n `mod` x == 0]
            in lower ++ [n `quot` y | y <- lower]

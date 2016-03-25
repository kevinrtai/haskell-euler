main = do
    let triangleNums = [sum [1..x] | x <- [1..]]
    print $ head $ filter (\(x, y) -> length y > 500) $ map (\x-> (x, factors x)) triangleNums

factors :: Integer -> [Integer]
factors n = let s = floor $ sqrt $ fromIntegral n
                lower = [x | x <- [1..s], n `mod` x == 0]
            in lower ++ [n `quot` y | y <- lower]

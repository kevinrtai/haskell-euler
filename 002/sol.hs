main = do
    let ans = sum [x | x <- (takeWhile (<4000000) fib), even x]
    print(ans)

fib :: [Int]
fib = 0:1:zipWith (+) fib (tail fib)

main = do
    let ans = sum [x | x <- (takeWhile (<4000000) (map fib [1..])), even x]
    print(ans)

fib :: (Integral a) => a -> Int
fib 1 = 1
fib 2 = 2
fib n = fib (n-1) + fib (n-2)

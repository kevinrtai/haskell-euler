main = do 
    let l = floor $ sqrt 1000 :: Int
    print $ head [a * b * c | m <- [1..l], n <- [m..l], let a=n^2-m^2, let b=2*m*n, let c=m^2+n^2, a+b+c==1000]

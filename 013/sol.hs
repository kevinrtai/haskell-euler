import Data.Char

main = do
    numStr <- readFile "./num.txt"
    let nums = map read (lines numStr) :: [Integer]
    print $ firstTen $ sum nums

firstTen :: Integer -> String
firstTen num = take 10 $ show num

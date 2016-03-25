import Data.Char

main = do
    numStr <- readFile "./num.txt"
    let num = init numStr
    print $ maximum $ prodThirteen num []

prodThirteen :: String -> [Int] -> [Int]
prodThirteen "" xs = xs
prodThirteen str xs = prodThirteen (tail str) ((product digits):xs)
        where digits = [digitToInt x | x <- take 13 str]

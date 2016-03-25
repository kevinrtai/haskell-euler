import Data.Char

main = do
    numStr <- readFile "./num.txt"
    let num = init numStr
    print $ maximum $ prodThirteen num

prodThirteen :: String -> [Int]
prodThirteen "" = [0]
prodThirteen str= (product digits):prodThirteen (tail str)
        where digits = [digitToInt x | x <- take 13 str]

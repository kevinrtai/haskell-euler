import Data.List

main = do
    let triple = [x * y | x <- [100..999], y <- [100..999]]
    print $ maximum [x | x <- triple, isPalindrome x]

isPalindrome :: Int -> Bool
isPalindrome n = d == (reverse d)
    where d = digits n []

digits :: Int -> [Int] -> [Int]
digits 0 xs = xs
digits n xs = (n `mod` 10):(digits (quot n 10) xs)

import Data.List
import Data.Char

digitsToNum :: [Int] -> Int
digitsToNum d = foldl1 (\a b -> 10 * a + b) d 

numToDigits :: Int -> [Int]
numToDigits = map digitToInt . show

sortDigits :: Int -> [Int]
sortDigits = sort . numToDigits

largest :: Int -> Int
largest = digitsToNum . reverse . sortDigits

smallest :: Int -> Int
smallest = digitsToNum . sortDigits

next :: Int -> Int
next n = largest n - smallest n

dropUntilRepeat :: Eq a => [a] -> [a]
dropUntilRepeat [] = []
dropUntilRepeat [n] = [n]
dropUntilRepeat (n:ns) | n == head ns = [n] 
                       | otherwise = n: dropUntilRepeat ns  

kaprekarSequence :: Int -> [Int]
kaprekarSequence = dropUntilRepeat . iterate next  

main = do
    start <- getLine
    print $ kaprekarSequence (read start :: Int)
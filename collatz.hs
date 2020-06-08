import Data.List

nextCollatz :: Int -> Int
nextCollatz n | odd n = 3 * n + 1 
              | otherwise = quot n 2

collatz :: Int -> [Int]
collatz n | n == 4 = [4, 2, 1]
          | otherwise = n : (collatz $ nextCollatz n)
-- collatz n = [n] ++ (collatz $ nextCollatz n)
-- collatz n = n : (collatz $ nextCollatz n)

main = do
    print $ collatz 90    
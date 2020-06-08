--DONE ON JUNE 3
isArmstrong :: Int -> Bool
isArmstrong n = n == sum (map (^ length d) d)  where d = numToDigits n 
 
getArmstrong :: Int -> Int -> [Int] 
getArmstrong a b = filter isArmstrong [a..b] 
 
numToDigits :: Int -> [Int]
numToDigits n = if n < 10 then [n] else numToDigits(quot n 10) ++ [mod n 10]
 
main = do 
    print $ getArmstrong 1000 10000

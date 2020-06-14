
isPrime :: Integer -> Bool
isPrime n | elem n [0, 1] = False
          | elem n [2, 3, 5, 7] = True
          | even n = False
          | otherwise = and [rem n f /= 0 | f <- [3, 5..limit]] where limit = floor $ sqrt $  fromInteger n

main = do 
    print $ isPrime 31
fb = zipWith (++) (cycle ["", "", "FIZZ"]) (cycle ["", "", "", "", "BUZZ"])
pick a b = if null a then b else a
fizzBuzz = zipWith pick fb $ map show [1 ..]
generateList n = take n fizzBuzz


main = do
    print $ generateList 100
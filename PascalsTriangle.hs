-- fact n = product [1 .. n]

-- term n r = quot (fact n) (fact (n - r) * fact (r))

-- pascalsRow n = map t [0 .. n] where t = term n

pascalsRow r = zipWith (+) ([0] ++ r) (r ++ [0])

pascalsTriangle = iterate pascalsRow

main = do
    print $ take 10 (pascalsTriangle [1])
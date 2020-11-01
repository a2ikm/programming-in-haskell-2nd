sqrsum :: Int -> Int
sqrsum n = sum [k^2 | k <- [1..n]]

sqrsum 100

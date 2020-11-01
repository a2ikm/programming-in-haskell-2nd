---- sum
-- 1.
sum :: Num a => [a] -> a

-- 2.
sum [] =
sum (x:xs) =

-- 3.
sum [] = 0
sum (x:xs) =

-- 4.
sum [] = 0
sum (x:xs) = x + sum xs

-- 5.

---- take
-- 1.
take :: Int n => n -> [a] -> [a]

-- 2.
take 0 _ =
take _ [] =
take n (x:xs) =

-- 3.
take 0 _ = []
take _ [] = []
take n (x:xs) =

-- 4.
take 0 _ = []
take _ [] = []
take n (x:xs) = x : take (n - 1) xs

-- 5.

---- last
-- 1.
last :: [a] -> a

-- 2.
last [x] =
last (x:xs) =

-- 3.
last [x] = x
last (x:xs) =

-- 4.
last [x] = x
last (x:xs) = last xs

-- 5.
last [x] = x
last (_:xs) = last xs


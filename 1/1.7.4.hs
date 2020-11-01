qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]

revqsort [] = []
revqsort (x:xs) = qsort larger ++ [x] ++ qsort smaller
  where smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b >= x]

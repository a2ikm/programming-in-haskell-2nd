-- original

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]

qsort [2, 2, 3, 1, 1]
  = qsort [2, 1, 1] ++ [2] ++ qsort [3]
  = (qsort [1, 1] ++ [2] ++ qsort []) ++ [2] ++ (qsort [] ++ [3] ++ qsort [])
  = ((qsort [1] ++ [1] ++ qsort []) ++ [2] ++ []) ++ [2] ++ ([] ++ [3] ++ [])
  = (((qsort [] ++ [1] ++ qsort []) ++ [1] ++ []) ++ [2]) ++ [2] ++ [3]
  = ((([] ++ [1] ++ []) ++ [1]) ++ [2]) ++ [2, 3]
  = (([1] ++ [1]) ++ [2]) ++ [2, 3]
  = ([1, 1] ++ [2]) ++ [2, 3]
  = [1, 1, 2] ++ [2, 3]
  = [1, 1, 2, 2, 3]

-- modified

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
  where smaller = [a | a <- xs, a < x]
        larger = [b | b <- xs, b >= x]

qsort [2, 2, 3, 1, 1]
  = qsort [1, 1] ++ [2] ++ qsort [2, 3]
  = (qsort [] ++ [1] ++ qsort [1]) ++ [2] ++ (qsort [] ++ [2] ++ qsort [3])
  = ([] ++ [1] ++ (qsort [] ++ [1] ++ qsort [])) ++ [2] ++ ([] ++ [2] ++ [3])
  = ([1] ++ ([] ++ [1] ++ [])) ++ [2] ++ [2, 3]
  = ([1] ++ ([1]) ++ [2, 2, 3]
  = [1, 1] ++ [2, 2, 3]
  = [1, 1, 2, 2, 3]

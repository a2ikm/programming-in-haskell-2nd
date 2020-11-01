product [] = 1
product (x:xs) = x * product xs

--

product [2, 3, 4]
  = 2 * product [3, 4]
  = 2 * 3 * product [4]
  = 6 * 4 * product []
  = 24 * 1
  = 24

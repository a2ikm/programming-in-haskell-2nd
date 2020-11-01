
luhnDouble x = if x2 > 9 then x2 - 9 else x2
  where x2 = x*2

luhn w x y z = (luhnDouble w + x + luhnDouble y + z) `mod` 10 == 0

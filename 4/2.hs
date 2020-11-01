thirda xs = head (tail (tail xs))

thirdb xs = xs !! 2

thirdc (_:_:x:_) = x

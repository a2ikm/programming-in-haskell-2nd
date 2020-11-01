safetail_a xs = if null xs then [] else tail xs

safetail_b xs | null xs = []
              | otherwise = tail xs

safetail_c [] = []
safetail_c xs = tail xs

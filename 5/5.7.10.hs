import Data.Char

-- Caesar cipher with small and big letters
-- big letters comes after small letters

let2int Char -> Int
let2int c | isLower c = ord c - ord 'a'
          | otherwise = ord c - ord 'A' + 26

int2let Int -> Char
int2let n | n < 26 = chr (ord 'a' + n)
          | otherwise = chr (ord 'A' + n - 26)

shift :: Int -> Char -> Char
shift n c = int2let ((let2int c + n) `mod` 52)

encode :: Int -> String -> String
encode n xs = [shift n x | x <- xs]

decode :: Int -> String -> String
decode n xs = encode (negate n) xs

"HelLo" == decode 3 (encode 3 "HelLo")

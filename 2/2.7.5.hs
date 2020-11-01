init2 xs = take (length xs - 1) xs

--

init3 xs = reverse (drop 1 (reverse xs))

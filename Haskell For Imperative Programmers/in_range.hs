in_range min max x =
    let in_lower_bound = min <= x
        in_upper_bound = max >= x
    in
    in_lower_bound && in_upper_bound

--in range min max = ilb && iub
-- where
--  ilb = min <= x
--  iub = max >= x


main = do
    print $ in_range 1 5 3
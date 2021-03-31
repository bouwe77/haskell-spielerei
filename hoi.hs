-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

-- https://www.hackerrank.com/challenges/fp-filter-array/problem
-- Filter a given array of integers and output only those values that are less than a specified value.

-- Returns numbers from the array smaller than the given number}
f n arr = filter (\x -> x < n) arr

-- However, this can be done shorter
f1 n arr = filter (< n) arr

-- Or even shorter
f2 n = filter (< n)

-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

-- TODO Interesting: check out recursive functions

-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

-- https://www.hackerrank.com/challenges/fp-filter-positions-in-a-list/problem
-- For a given list with  integers, return a new list removing the elements at odd positions.

filterOdd [] = []
filterOdd [odd] = []
filterOdd (odd:even:rest) = even:(filterOdd rest) 

-- Example call:    filterOdd [2,3,1,5,6]
-- Returns:         [3,5]

-- = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

-- Sum all odd numbers in the list:
--sumOdd arr = foldr (\x y -> x + y) 0 (filter odd arr)

-- Or shorter:
sumOdd arr = foldr (+) 0 (filter odd arr)

-- Example call:    sumOdd [1,2,3,4,5,6]
-- Returns:         9
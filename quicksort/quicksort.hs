quicksort:: [Int] -> [Int]

quicksort x | length x < 2 = x

quicksort (x:xs) = 
	let greaterThan = filter ((<) x) (xs)
	    lessThan = filter (<= x) (xs)
	in quicksort lessThan ++ [x] ++ quicksort greaterThan


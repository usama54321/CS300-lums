merge::[Int]->[Int]->[Int]

merge [] y = y
merge x [] = x

merge (x:xs) (y:ys) | x > y = y : merge (x:xs) ys
merge (x:xs) (y:ys) = x : merge xs (y:ys)


split:: [Int] -> ([Int], [Int])

split []  = ([],[])
split (x:[]) = ([x], [])
split (x:y:xs) = let (a,b) = split(xs) in (x:a, y: b)

mergeSort:: [Int] -> [Int]

mergeSort x | length x < 2 = x
mergeSort x = 
	let (a,b) = split x in
	merge (mergeSort a) (mergeSort b) 

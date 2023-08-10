as yet unclassified
permutateLines

	| array |
	array := 1 to: self grid width.
	array do: [ :i |
		| line1 line2 |
		line1 := array atRandom.
		line2 := array atRandom.
		self permutateLine: line1 with: line2 ]
tests
testPermutateLineWith 
	|field line1 line2|
	field := TField gridForTest.
	line1 := field grid atRow: 1.
	line2 := field grid atRow: 2.
	field permutateLine: 1 with: 2.
	self assert: line1 equals: (field grid atRow: 2).
	self assert: line2 equals: (field grid atRow: 1). 
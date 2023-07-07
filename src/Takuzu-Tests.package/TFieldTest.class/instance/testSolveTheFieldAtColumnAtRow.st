tests
testSolveTheFieldAtColumnAtRow

	| field box1 |
	field := TField gridForTest.
	box1 := TSetBox value: 1.
	self assert: (field solveTheField: field atColumn: 1 atRow: 1).
	field := TField gridForTest.
	field grid at: 1 @ 3 put: box1.
	self deny: (field solveTheField: field atColumn: 1 atRow: 1)
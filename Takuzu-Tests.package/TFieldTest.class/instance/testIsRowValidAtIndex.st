tests
testIsRowValidAtIndex

	| field box0 box1 |
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	field := self gridForTest.
	field grid atColumn: 1 atRow: 2 put: box1.
	self assert: (field isRowValidAtIndex: 2).
	field grid atColumn: 2 atRow: 2 put: box1.
	self deny: (field isRowValidAtIndex: 2).
	field grid atColumn: 2 atRow: 2 put: box0.
	self assert: (field isRowValidAtIndex: 2).
	field grid atColumn: 4 atRow: 2 put: box1.
	self deny: (field isRowValidAtIndex: 2)
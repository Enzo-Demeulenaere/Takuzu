tests
testIsColumnValidAtIndex

	| field box0 box1 |
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	field := self gridForTest.
	field grid atColumn: 2 atRow: 1 put: box1.
	self assert: (field isColumnValidAtIndex: 2).
	field grid atColumn: 2 atRow: 2 put: box1.
	self deny: (field isColumnValidAtIndex: 2).
	field grid atColumn: 2 atRow: 2 put: box0.
	self assert: (field isColumnValidAtIndex: 2).
	field grid atColumn: 2 atRow: 4 put: box1.
	self deny: (field isColumnValidAtIndex: 2).
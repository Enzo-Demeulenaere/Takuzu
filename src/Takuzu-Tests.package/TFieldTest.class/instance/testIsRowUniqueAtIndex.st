tests
testIsRowUniqueAtIndex

	| field box0 box1 |
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	field := self gridForTest.
	field grid atColumn: 2 atRow: 2 put: box1.

	self deny: (field isRowUniqueAtIndex: 2).
	self assert:
		(field isRowUniqueAtIndex: 3).
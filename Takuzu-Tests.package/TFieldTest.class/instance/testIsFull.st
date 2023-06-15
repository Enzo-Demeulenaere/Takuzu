tests
testIsFull

	| field |
	field := TField grid:
		         (CTNewArray2D
			          width: 4
			          height: 4
			          tabulate: [ :x :y | TSetBox0 new]).
	self assert: field isFull.
	(field grid at: 1 @ 1) value: nil.
	self deny: field isFull
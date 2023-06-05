tests
testIsValid

	| line box0 box1 |
	box0 := TBoxSet value: 0.
	box1 := TBoxSet value: 1.
	line := TLine new contents: (OrderedCollection
			         with: box0
			         with: box0
			         with: box0
			         with: box1
			         with: box1
			         with: box1).
	self deny: line isValid.
	line contents at: 1 put: box1.
	line contents at: 5 put: box0.
	self assert: line isValid.
	line contents at: 3 put: nil.
	self assert: line isValid
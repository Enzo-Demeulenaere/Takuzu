tests
testIsValid

	| field box0 box1 |
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	field := self gridForTest.
	self assert: field isValid.
	field grid atColumn: 2 atRow: 2 put: box1.
	"we try to unvalidate it with similar lines"
	self deny: field isValid.
	field grid atColumn: 2 atRow: 2 put: TBox unknown.
	field grid atColumn: 3 atRow: 1 put: box1.
	"we try to unvalidate it with unvalid row"
	self deny: field isValid.
	field grid atColumn: 3 atRow: 1 put: TBox unknown.
	field grid atColumn: 1 atRow: 3 put: box1.
	"we try to unvalidate it with unvalid column"
	self deny: field isValid
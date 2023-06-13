tests
testIsSimilarTo

	| line1 line2 box0 box1 boxNil |
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	boxNil := TSetBox value: nil.
	line1 := {
		         box0.
		         box0.
		         box1.
		         box0.
		         box1.
		         box1 } asTLine.
	line2 := {
		         box0.
		         box0.
		         boxNil.
		         box0.
		         boxNil.
		         boxNil } asTLine.
	self assert: (line1 isSimilarTo: line2).
	line2 := {
		         boxNil.
		         boxNil.
		         box1.
		         boxNil.
		         box1.
		         box1 } asTLine.
	self assert: (line1 isSimilarTo: line2).
	line1 := {
		         box0.
		         box0.
		         boxNil.
		         box0.
		         boxNil.
		         boxNil } asTLine.
	self assert: (line1 isSimilarTo: line2).
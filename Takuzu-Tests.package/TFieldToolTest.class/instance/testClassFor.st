tests
testClassFor

	| tool box0 box1 boxUnknown boxOther |
	tool := TFieldTool new.
	box0 := tool classFor: '0'.
	self assert: box0 class equals: TSetBox.
	self assert: box0 value equals: 0.
	box1 := tool classFor: '1'.
	self assert: box1 class equals: TSetBox.
	self assert: box1 value equals: 1.
	boxUnknown := tool classFor: '_'.
	self assert: boxUnknown class equals: TUnknownBox.
	boxOther := tool classFor: '?'.
	self assert: boxOther class equals: TUnknownBox
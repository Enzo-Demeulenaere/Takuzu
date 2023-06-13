tests
testIsThisLineUniqueAmongArray

	| field box0 box1 boxNil originalLine line1 line2 line3 |
	field := TField new.
	box0 := TSetBox value: 0.
	box1 := TSetBox value: 1.
	boxNil := TUnknownBox.
	originalLine := TLine new contents: (OrderedCollection
			                 with: box0
			                 with: box0
			                 with: box1
			                 with: box1).
	line1 := TLine new contents: (OrderedCollection
			          with: box0
			          with: box0
			          with: box1
			          with: box1).
	line2 := TLine new contents: (OrderedCollection
			          with: box0
			          with: box0
			          with: box1
			          with: boxNil).
	line3 := TLine new contents: (OrderedCollection
			          with: box0
			          with: box0
			          with: boxNil
			          with: boxNil).
	self deny:
		(field isThisLineUnique: originalLine amongArray: { line1 }).
	self deny:
		(field isThisLineUnique: originalLine amongArray: { line2 }).
	self deny:
		(field isThisLineUnique: originalLine amongArray: { line3 })
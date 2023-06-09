as yet unclassified
buildMapFor: aString

	| array tmp |
	array := self buildEmptyFor: aString.
	tmp := array asArray collect: [ :each | (self classFor: each) copy ].
	field grid: (CTNewArray2D fromArray: tmp width: array width).
	^ field
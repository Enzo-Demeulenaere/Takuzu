as yet unclassified
buildMapFor: aString

	| array2D |
	array2D := self buildArrayFor: aString.
	field grid: (array2D collect: [ :each | (self classFor: each) copy ]).
	^ field
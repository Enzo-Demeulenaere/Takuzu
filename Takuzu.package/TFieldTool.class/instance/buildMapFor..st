as yet unclassified
buildMapFor: aString

	| array |
	array := self buildEmptyFor: aString.

	array withIndexesDo: [ :columnNumber :rowNumber :char |
		| new |
		new := self classFor: char.
		field grid atColumn: columnNumber atRow: rowNumber put: new ].
	^ field
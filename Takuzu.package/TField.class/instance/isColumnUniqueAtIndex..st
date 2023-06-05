testing
isColumnUniqueAtIndex: aNumber

	| testedColumn columns |
	testedColumn := TLine new contents: (self grid atColumn: aNumber).
	columns := self grid columns asOrderedCollection.
	1 to: aNumber do: [ :i | columns removeFirst ].


	^ self isThisLineUnique: testedColumn amongArray: columns
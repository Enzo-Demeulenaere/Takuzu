testing
isRowUniqueAtIndex: aNumber

	| testedRow rows |
	testedRow := TLine new contents: (self grid atRow: aNumber).
	rows := (self grid rows as: OrderedCollection ) collect: [ :each | each asTLine ].
	1 to: aNumber do: [ :i | rows removeFirst ].

	^ self isThisLineUnique: testedRow amongArray: rows 
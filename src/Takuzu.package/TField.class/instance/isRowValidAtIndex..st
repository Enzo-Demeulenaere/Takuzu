testing
isRowValidAtIndex: aNumber

	| testedRow |
	testedRow := TLine new contents: (self grid atRow: aNumber).
	^ testedRow isValid
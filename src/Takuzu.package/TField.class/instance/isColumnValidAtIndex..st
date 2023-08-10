testing
isColumnValidAtIndex: aNumber

	| testedColumn |
	testedColumn := TLine new contents: (self grid atColumn: aNumber).
	^ testedColumn isValid
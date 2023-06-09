as yet unclassified
clickOnBox: aTBox
	|box|
	box := self grid atColumn: aTBox position x atRow: aTBox position y.
	box value: (box valueDictionary at: box value)
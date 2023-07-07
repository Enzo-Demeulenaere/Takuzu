as yet unclassified
fillBindingDictionary

	characterClassBinding := Dictionary new.
	characterClassBinding at: '_' put: TBox unknown.
	characterClassBinding at: '1' put: (TBox set: 1).
	characterClassBinding at: '0' put: (TBox set: 0)
as yet unclassified
buildEmptyFor: aString

	| array index |
	lines := self splitLines: aString.
	index := 1.
	array := CTNewArray2D
		         width: self maxLineLength
		         height: self maxLineLength.
	field := TField new.
	lines do: [ :line |
		array atRow: index put: line substrings.
		index := index + 1 ].
	^ array
as yet unclassified
solveTheField: aTField atColumn: columnIndex atRow: rowIndex

	| box currentColumn currentRow |
	currentColumn := columnIndex.
	currentRow := rowIndex.

	columnIndex = (self grid width + 1) ifTrue: [
		rowIndex = self grid height ifTrue: [ ^ true ].
		currentColumn := 1.
		currentRow := rowIndex + 1 ].

	box := aTField grid atColumn: currentColumn atRow: currentRow.

	box value
		ifNotNil: [
			^ self
				  solveTheField: aTField
				  atColumn: currentColumn + 1
				  atRow: currentRow ]
		ifNil: [
			0 to: 1 do: [ :i |
				box value: i.
				self isValid
					ifTrue: [
						(self
							  solveTheField: aTField
							  atColumn: currentColumn + 1
							  atRow: currentRow) ifTrue: [ ^ true ] ]
					ifFalse: [ box value: nil ] ].
			^ false ]
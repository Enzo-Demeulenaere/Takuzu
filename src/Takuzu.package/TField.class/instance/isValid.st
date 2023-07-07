testing
isValid

	| columnIndex rowIndex |
	columnIndex := 1.
	rowIndex := 1.
	self grid columnsDo: [ :column |
		| line |
		line := TLine new contents: column.
		(line isValid and: [ self isColumnUniqueAtIndex: columnIndex ])
			ifFalse: [ ^ false ].
		columnIndex := columnIndex + 1 ].

	self grid rowsDo: [ :row |
		| line |
		line := TLine new contents: row.
		(line isValid and: [ self isRowUniqueAtIndex: rowIndex ]) ifFalse: [
			^ false ].
		rowIndex := rowIndex + 1 ].
	^ true
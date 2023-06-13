as yet unclassified
solve

	^ (self solveTheField: self atColumn: 1 atRow: 1) ifTrue: [ 
		  self grid ]
	ifFalse: [ Error signal: 'Field not solvable' ]
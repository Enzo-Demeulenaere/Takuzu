removing
removeRandomBoxesWithRatio: aNumber

	(aNumber > 0 and: [ aNumber < 100 ]) ifFalse: [ ^self ] .
	self grid withIndexes: [ :column :row |
		100 atRandom < aNumber ifTrue: [
			self grid at: column @ row put: TUnknownBox ] ]
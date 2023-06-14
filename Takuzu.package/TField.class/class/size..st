accessing
size: aNumber

	^ self new
		  grid: (CTNewArray2D
				   width: aNumber
				   height: aNumber
				   tabulate: [ :x :y | TSetBox value: nil ])
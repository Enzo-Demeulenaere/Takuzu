point functions
emptyGridWithSize: aNumber

	^ self new
		  grid: (CTNewArray2D width: aNumber height: aNumber) ;
		  yourself
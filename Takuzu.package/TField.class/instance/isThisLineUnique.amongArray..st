testing
isThisLineUnique: aTLine amongArray: anArray
		

	^ (anArray anySatisfy: [ :line |
		   aTLine isSimilarTo: line ]) not
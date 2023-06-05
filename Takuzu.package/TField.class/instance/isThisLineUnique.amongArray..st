testing
isThisLineUnique: aTLine amongArray: anArray
		

	^ (anArray anySatisfy: [ :line |
		   aTLine isSimilarTo: (TLine new contents: line) ]) not
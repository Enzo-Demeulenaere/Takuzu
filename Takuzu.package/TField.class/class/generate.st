translating
generate

	^ self new
		  solve;
		  permutateLines;
		  removeRandomBoxes;
		yourself
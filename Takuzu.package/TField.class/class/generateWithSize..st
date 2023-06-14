translating
generateWithSize: aNumber

	^ (self
		  size: aNumber)
		  solve;
		  permutateLines;
		  removeRandomBoxes;
		  yourself
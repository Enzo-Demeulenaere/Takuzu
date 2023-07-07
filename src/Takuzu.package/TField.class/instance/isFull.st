testing
isFull 
	
	^ (self grid contents anySatisfy: [ :each | each value isNil ]) not
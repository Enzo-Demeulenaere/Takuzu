printing
printOn: aStream

	super printOn: aStream.
	aStream space.
	aStream print: self value
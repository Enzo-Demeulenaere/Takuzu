printing
printOn: aStream

	super printOn: aStream.
	aStream space.
	aStream nextPut: $[.
	self contents do: [ :each | aStream print: each ] separatedBy: [
		aStream nextPut: $,.
		aStream space.
		 ].
	aStream nextPut: $]
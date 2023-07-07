as yet unclassified
checkIfFinished

	(self isFull and: [ self isValid ]) ifTrue: [ self endGame ]
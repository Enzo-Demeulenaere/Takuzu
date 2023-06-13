as yet unclassified
permutateLine: aFirstNumber with: aSecondNumber

	| tmp |
	aFirstNumber = aSecondNumber ifTrue: [ ^ self ].
		tmp := self grid atRow: aFirstNumber.
		self grid atRow: aFirstNumber put: (self grid atRow: aSecondNumber).
		self grid atRow: aSecondNumber put: tmp
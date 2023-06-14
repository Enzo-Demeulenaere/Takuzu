testing
isValid

	| nbOf0 nbOf1 length |
	nbOf0 := self nbOf0.
	nbOf1 := self nbOf1.
	length := self contents size.
	1 to: length - 2 do: [ :index |
		(self contents at: index) value ifNotNil: [
			(self contents at: index) value
			= (self contents at: index + 1) value and: [
				(self contents at: index + 1) value
				= (self contents at: index + 2) value ifTrue: [ ^ false ] ] ] ].

	^ (nbOf0 = nbOf1 and: [ nbOf0 = (length // 2) ]) or: [
		  nbOf0 <= (length // 2) and: [ nbOf1 <= (length // 2) ] ]
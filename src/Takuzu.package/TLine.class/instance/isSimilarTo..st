testing
isSimilarTo: aTLine

	| halfSize selfNbOf0 selfNbOf1 lineNbOf0 lineNbOf1 |
	halfSize := self contents size // 2.
	selfNbOf0 := self nbOf0.
	selfNbOf1 := self nbOf1.
	lineNbOf0 := aTLine nbOf0.
	lineNbOf1 := aTLine nbOf1.

	(selfNbOf0 = halfSize and: [ selfNbOf0 = lineNbOf0 ]) ifTrue: [
		self contents with: aTLine contents do: [ :item :other |
			(item value = 0 and: [ other value ~= item value ]) ifTrue: [ ^ false ] ].
		^ true ].

	(selfNbOf1 = halfSize and: [ selfNbOf1 = lineNbOf1 ]) ifTrue: [
		self contents with: aTLine contents do: [ :item :other |
			(item value = 1 and: [ other value ~= item value ]) ifTrue: [ ^ false ] ].
		^ true ].

	((selfNbOf1 = halfSize and: [ lineNbOf0 = halfSize ]) or: [
		 selfNbOf0 = halfSize and: [ lineNbOf1 = halfSize ] ]) ifTrue: [
		self contents with: aTLine contents do: [ :item :other |
			({
				 item value.
				 other value } count: #isNil) = 1 ifFalse: [ ^ false ] ].
		^ true ].
	^ false
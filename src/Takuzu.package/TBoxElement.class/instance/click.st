public
click

	self box isTSetBox
		ifTrue: [ self lock ]
		ifFalse: [ self field clickOnBox: self box.
			self updateBackgroundColor ]
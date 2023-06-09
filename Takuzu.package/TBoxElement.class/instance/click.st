public
click

	self box isTBoxSet
		ifTrue: [ self lock ]
		ifFalse: [ self field clickOnBox: self box.
			self updateBackgroundColor ]
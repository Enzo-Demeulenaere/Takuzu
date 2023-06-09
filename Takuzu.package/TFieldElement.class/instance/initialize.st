initialization
initialize

	super initialize.
	self background: (BlBackground paint: Color veryVeryDarkGray).
	self layout: (BlGridLayout horizontal cellSpacing: 5).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ]
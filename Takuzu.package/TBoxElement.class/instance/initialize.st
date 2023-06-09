as yet unclassified
initialize

	super initialize.

	colorDictionary := Dictionary new.
	colorDictionary
		at: 0 put: Color red;
		at: 1 put: Color lightBlue;
		at: nil put: Color veryDarkGray.
	self background: self backgroundPaint.
	self geometry: (BlRoundedRectangleGeometry cornerRadius: 5).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].

	self addEventHandlerOn: BlMouseUpEvent do: [ :anEvent | self click ]
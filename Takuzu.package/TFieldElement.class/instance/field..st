accessing
field: aTField

	field := aTField.
	self layout: (BlGridLayout horizontal cellSpacing: 5 - (field grid width // 5 )).
	self constraintsDo: [ :aLayoutConstraints |
		aLayoutConstraints horizontal matchParent.
		aLayoutConstraints vertical matchParent ].
	self padding: (BlInsets all: 5).
	self layout columnCount: field grid width.
	field grid do: [ :aBox |
		| boxElement |
		boxElement := (TBoxElement box: aBox) field: aTField.
		self addChild: boxElement ]
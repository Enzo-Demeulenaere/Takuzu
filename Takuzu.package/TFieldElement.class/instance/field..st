accessing
field: aTField

	field := aTField.
	self padding: (BlInsets all: 5).
	self layout columnCount: field grid width.
	field grid do: [ :aBox |
		| boxElement |
		boxElement := (TBoxElement box: aBox) field: aTField.
		self addChild: boxElement ]
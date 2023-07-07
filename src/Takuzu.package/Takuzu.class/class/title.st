accessing
title

	| title |
	title := BlElement new background: Color veryDarkGray.
	title constraintsDo: [ :c |
		c horizontal matchParent.
		c vertical matchParent ].
	title layout: BlFrameLayout new.
	title addChild: ((BlTextElement new text: ('Takuzu' asRopedText
				   fontName: 'Phosphate';
				   foreground: Color white;
				   fontSize: 50)) constraintsDo: [ :c |
			 c frame horizontal alignCenter.
			 c frame vertical alignCenter ]).
	^ title
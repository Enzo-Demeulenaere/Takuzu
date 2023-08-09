as yet unclassified
openEndGameWindowInBloc

	| space container |
	container := BlElement new
		             background: Color veryDarkGray;
		             layout: BlFrameLayout new;
		             constraintsDo: [ :c |
			             c horizontal matchParent.
			             c vertical matchParent ].

	container addChild: ((BlTextElement new text: ('Victory' asRopedText
				   fontName: 'Phosphate';
				   foreground: Color white;
				   fontSize: 50)) constraintsDo: [ :c |
			 c frame horizontal alignCenter.
			 c frame vertical alignCenter ]).

	space := OBlSpace new.
	space root addChild: container.
	space
		pulse;
		extent: 300 @ 300;
		show.
	^ space
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

	space := BlSpace new.
	space root addChild: container.
	space
		pulse;
		extent: 300 @ 300.
	
	"Hack to fix windows position to show title bar"		
	(OSPlatform current isWindows) ifTrue: [ space position: space position + 100@100 ].
	
	space show.
	^ space
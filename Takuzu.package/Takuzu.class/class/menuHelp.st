as yet unclassified
menuHelp

	| menu |
	menu := ToMenu new.
	menu label: (ToLabel text: 'Help').
	menu icon:
		(ToImage inner: (Smalltalk ui icons iconNamed: #glamorousHelp)).
	menu whenClickedDo: [
		| container lab space |
		lab := ToLabel text: ('How to play:
		 
Takuzu is a japanese puzzle game also known as binary sudoku.

The goal is to fill the grid with red or blue cells following these 3 rules :

	- You can''t have more than 2 cells of the same color aligned.
	- The must be as many red and blue cells on each row and column
	- Rows and Columns must be all different one to another
	
-----

You can start playing with the ''Levels'' menu, with non-ambiguous levels from size 4x4 to 12x12.

You can also play on 4x4 and 6x6 randomly generated levels in the ''Random'' menu.
The random generation is a bit messy so you may encounter ambiguous levels, improvements might appear in the future.
			
Have fun !' asRopedText foreground: Color white).
		lab beMultiLine.
		lab hMatchParent.
		container := BlElement new
			             background: Color veryDarkGray;
			             padding: (BlInsets all: 15);
			             layout: BlLinearLayout vertical;
			             constraintsDo: [ :c |
				             c horizontal fitContent.
				             c vertical fitContent ].
		container addChild: lab.
		space := OBlSpace new.
		space root
			layout: BlFrameLayout new;
			addChild: container;
			constraintsDo: [ :c |
				c horizontal matchParent.
				c vertical fitContent ].
		space pulse.
		space extent: container extent.
		space show ].
	^ menu
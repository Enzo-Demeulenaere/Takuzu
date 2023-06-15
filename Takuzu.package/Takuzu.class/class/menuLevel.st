as yet unclassified
menuLevel

	| menu |
	menu := ToMenu new.
	menu label: (ToLabel text: 'Levels').
	menu icon:
		(ToImage inner: (Smalltalk ui icons iconNamed: #solidMenu)).

	4 to: 8 by: 2 do: [ :index |
		| subMenu |
		subMenu := ToMenu new label:
			           (ToLabel new text: (String streamContents: [ :out |
					             out
						             print: index;
						             nextPut: $x;
						             print: index ])).
		1 to: 5 do: [ :i |
			| stream selector tmp |
			stream := String streamContents: [ :out |
				          out
					          nextPutAll: 'Level';
					          space;
					          print: i ].
			selector := String streamContents: [ :out |
				            out
					            nextPutAll: 'launch';
					            print: index;
					            nextPutAll: 'Grid';
					            print: i ].
			tmp := TFieldElement class selectors select: [ :each |
				       each = selector ].
			subMenu addItem:
				((ToButtonMenuItem new labelText: stream) whenClickedDo: [
					 TFieldElement perform: selector asSymbol ]) ].
		menu addItem: subMenu ].

	^ menu
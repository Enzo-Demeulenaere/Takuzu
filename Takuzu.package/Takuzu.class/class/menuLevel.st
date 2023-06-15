as yet unclassified
menuLevel

	| menu |
	menu := ToMenu new.
	menu label: (ToLabel text: 'Levels').
	menu icon:
		(ToImage inner: (Smalltalk ui icons iconNamed: #solidMenu)).
	menu addItem: (ToMenu new
			 label: (ToLabel new text: '4x4');
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 1') whenClickedDo: [
						  TFieldElement launch4Grid1 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 2') whenClickedDo: [
						  TFieldElement launch4Grid2 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 3') whenClickedDo: [
						  TFieldElement launch4Grid3 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 4') whenClickedDo: [
						  TFieldElement launch4Grid4 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 5') whenClickedDo: [
						  TFieldElement launch4Grid5 ])).
	menu addItem: (ToMenu new
			 label: (ToLabel new text: '6x6');
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 1') whenClickedDo: [
						  TFieldElement launch6Grid1 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 2') whenClickedDo: [
						  TFieldElement launch6Grid2 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 3') whenClickedDo: [
						  TFieldElement launch6Grid3 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 4') whenClickedDo: [
						  TFieldElement launch6Grid4 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 5') whenClickedDo: [
						  TFieldElement launch6Grid5 ])).
	menu addItem: (ToMenu new
			 label: (ToLabel new text: '8x8');
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 1') whenClickedDo: [
						  TFieldElement launch8Grid1 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 2') whenClickedDo: [
						  TFieldElement launch8Grid2 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 3') whenClickedDo: [
						  TFieldElement launch8Grid3 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 4') whenClickedDo: [
						  TFieldElement launch8Grid4 ]);
			 addItem:
				 ((ToButtonMenuItem new labelText: 'Level 5') whenClickedDo: [
						  TFieldElement launch8Grid5 ])).
	"menu addItem:
		((ToButtonMenuItem new labelText: '10x10') whenClickedDo: [
			 TFieldElement launch10 ]).
	menu addItem:
		((ToButtonMenuItem new labelText: '12x12') whenClickedDo: [
			 TFieldElement launch12 ])."

	^ menu
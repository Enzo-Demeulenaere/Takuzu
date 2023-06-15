as yet unclassified
menuLevel4

	| menu |
	menu := ToMenu new
		        label: (ToLabel new text: '4x4');
		        addItem:
			        ((ToButtonMenuItem new labelText: 'Level 1')
				         whenClickedDo: [ TFieldElement launch4Grid1 ]);
		        addItem:
			        ((ToButtonMenuItem new labelText: 'Level 2')
				         whenClickedDo: [ TFieldElement launch4Grid2 ]);
		        addItem:
			        ((ToButtonMenuItem new labelText: 'Level 3')
				         whenClickedDo: [ TFieldElement launch4Grid3 ]);
		        addItem:
			        ((ToButtonMenuItem new labelText: 'Level 4')
				         whenClickedDo: [ TFieldElement launch4Grid4 ]);
		        addItem:
			        ((ToButtonMenuItem new labelText: 'Level 5')
				         whenClickedDo: [ TFieldElement launch4Grid5 ]).
		^ menu
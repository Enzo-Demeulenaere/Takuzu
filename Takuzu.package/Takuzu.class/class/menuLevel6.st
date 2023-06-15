as yet unclassified
menuLevel6

	| menu |
	menu := (ToMenu new
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
	^ menu
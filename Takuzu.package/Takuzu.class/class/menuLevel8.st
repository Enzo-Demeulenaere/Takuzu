as yet unclassified
menuLevel8

	| menu |
	menu := (ToMenu new
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
	^ menu
as yet unclassified
menuLevel

	| menu |
	menu := ToMenu new.
	menu label: (ToLabel text: 'Levels').
	menu icon:
		(ToImage inner: (Smalltalk ui icons iconNamed: #solidMenu)).
	menu addItem: self menuLevel4.
	menu addItem: self menuLevel6.
	menu addItem: self menuLevel8.
	"menu addItem:
		((ToButtonMenuItem new labelText: '10x10') whenClickedDo: [
			 TFieldElement launch10 ]).
	menu addItem:
		((ToButtonMenuItem new labelText: '12x12') whenClickedDo: [
			 TFieldElement launch12 ])."

	^ menu
as yet unclassified
menuRandom

	| menu |
	menu := ToMenu new.
	menu label: (ToLabel text: 'Random').
	menu icon:
		(ToImage inner: (Smalltalk ui icons iconNamed: #solidMenu)).
	menu addItem:
		((ToButtonMenuItem new labelText: '4x4') whenClickedDo: [
			 TFieldElement launch4 ]).
	menu addItem:
		((ToButtonMenuItem new labelText: '6x6') whenClickedDo: [
			 TFieldElement launch6 ]).
	"menu addItem:
		((ToButtonMenuItem new labelText: '8x8') whenClickedDo: [
			 TFieldElement launch8 ]).
	menu addItem:
		((ToButtonMenuItem new labelText: '10x10') whenClickedDo: [
			 TFieldElement launch10 ]).
	menu addItem:
		((ToButtonMenuItem new labelText: '12x12') whenClickedDo: [
			 TFieldElement launch12 ])."

	^ menu
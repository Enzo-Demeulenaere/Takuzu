as yet unclassified
open4x4

	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 field: TField gridForTest;
		                 yourself.

	space addChild: aFieldElement.
	space pulse
		extent: 500@500 ;
		resizable: false;
		show
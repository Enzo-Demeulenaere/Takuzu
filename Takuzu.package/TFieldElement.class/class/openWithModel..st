as yet unclassified
openWithModel: aTField

	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 field: aTField;
		                 yourself.
	space addChild: aFieldElement.
	space pulse
		extent: 500 @ 500;
		resizable: false;
		show
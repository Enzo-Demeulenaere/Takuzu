as yet unclassified
openWithModel: aTField

	| aFieldElement space |
	space := BlSpace new.
	aFieldElement := self new
		                 field: aTField;
		                 yourself.
	space root addChild: aFieldElement.
	space pulse
		extent: 500 @ 500;
		resizable: false.

	"Hack to fix windows position to show title bar"		
	(OSPlatform current isWindows) ifTrue: [ space position: space position + 100@100 ].
	space show
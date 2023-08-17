as yet unclassified
openWithMenuBar

	| space randomMenu levelMenu helpMenu bar title |
	randomMenu := self menuRandom.
	levelMenu := self menuLevel.
	helpMenu := self menuHelp.
	bar := self menuBar.
	title := self title.

	bar addMenu: levelMenu.
	bar addMenu: randomMenu.
	bar addMenu: helpMenu.
	space := BlSpace new.


	space root addChild: title.
	space root addChild: bar.
	space extent: 300 @ 300.

	"Hack to fix windows position to show title bar"		
	(OSPlatform current isWindows) ifTrue: [ space position: space position + 100@100 ].

	space show.
	
	^ space
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
	space := OBlSpace new.


	space root addChild: title.
	space root addChild: bar.
	space extent: 300 @ 300.
	space show
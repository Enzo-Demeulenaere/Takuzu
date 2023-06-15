as yet unclassified
openWithMenuBar

	| space playMenu levelMenu helpMenu bar title |
	playMenu := self menuPlay.
	levelMenu := self menuLevel.
	helpMenu := self menuHelp.
	bar := self menuBar.
	title := self title.

	bar addMenu: playMenu.
	bar addMenu: levelMenu.
	bar addMenu: helpMenu.
	space := OBlSpace new.


	space root addChild: title.
	space root addChild: bar.
	space extent: 300 @ 300.
	space show
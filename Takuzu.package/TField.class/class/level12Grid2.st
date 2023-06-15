level12
level12Grid2

	| level |
	level := '_____0______
	0___1______1
	__1___1__0_1
	__11__1_____
	0____00101_0
	_____01_0___
	_10____11__0
	10_1__11_110
	_1___1____0_
	______11_1__
	0__0_______0
	1______00___'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level4
level4Grid1

	| level |
	level := '_1_1
	_00_
	0___
	____'.


	^ self grid: (LevelImporter fromString: level fromPackage: self package)
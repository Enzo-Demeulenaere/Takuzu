level8
level8Grid2

	| level |
	level := '____1___
	_1______
	0______1
	__0_1___
	_1_0_0_1
	________
	__00____
	_1______'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
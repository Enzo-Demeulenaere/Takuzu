level4
level4Grid2

	| level |
	level := '___0
	_0_0
	____
	_00_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level6
level6Grid2

	| level |
	level := '______
	1_11__
	___1__
	0____0
	0_____
	_0____'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
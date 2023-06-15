level4
level4Grid3

	| level |
	level := '1___
	_1__
	_10_
	___0'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
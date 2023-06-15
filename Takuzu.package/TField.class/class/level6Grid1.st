level6
level6Grid1

	| level |
	level := '______
	_0_00_
	11__1_
	__0__0
	______
	____1_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
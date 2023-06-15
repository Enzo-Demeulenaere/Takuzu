level6
level6Grid4

	| level |
	level := '0____1
	01_1__
	____1_
	1__11_
	______
	______'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level6
level6Grid3

	| level |
	level := '___0__
1_____
_11___
____1_
1___0_
_11___'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
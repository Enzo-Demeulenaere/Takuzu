level4
level4Grid5

	| level |
	level := '_1_1
_10_
____
___0'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
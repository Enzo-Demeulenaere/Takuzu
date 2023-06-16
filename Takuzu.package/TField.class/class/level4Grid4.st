level4
level4Grid4

	| level |
	level := '1___
1__1
_0__
____'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level6
level6Grid5

	| level |
	level := '_____0
_1__0_
_11_0_
______
___1__
___1__'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
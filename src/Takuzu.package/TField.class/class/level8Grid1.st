level8
level8Grid1

	| level |
	level := '0__0____
0______0
__00____
_1______
_____0_0
__0__00_
_0______
11___10_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
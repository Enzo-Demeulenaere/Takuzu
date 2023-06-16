level8
level8Grid5

	| level |
	level := '___0___1
__0_____
0_00__0_
____11_0
1______0
____0_0_
________
0_____01'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
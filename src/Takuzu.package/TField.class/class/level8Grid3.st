level8
level8Grid3

	| level |
	level := '__11____
1_0__1__
___0___1
__00___1
00______
________
__11__01
______0_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
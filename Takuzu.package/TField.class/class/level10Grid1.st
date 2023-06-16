level10
level10Grid1

	| level |
	level := '_11__1__1_
_10__10_0_
___0______
__1______1
1___0_0___
___0_10___
1_1_____0_
__1______0
_0____1_1_
1______11_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
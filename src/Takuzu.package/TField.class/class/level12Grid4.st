level12
level12Grid4

	| level |
	level := '__1_______0_
_0______1___
____1_00_0__
__0_1_______
__0____0_1_0
1____0_0____
______1_00__
_1_1______1_	
____0_0__0__
11_0________
___1_1__00__
1_0__1____0_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
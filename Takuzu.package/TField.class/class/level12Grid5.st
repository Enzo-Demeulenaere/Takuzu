level12
level12Grid5

	| level |
	level := '__1_1__0____
___0_0_0___0
1________1__
_0___1_0___0
____1______0
______1__0__
___0_01_10__
01__________
0_____1_____
__10__1_1___
1___1__0__0_
_____1____0_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
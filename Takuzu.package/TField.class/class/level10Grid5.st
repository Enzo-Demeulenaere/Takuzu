level10
level10Grid5

	| level |
	level := '01_1______
_00__0____
___01__1__
0_____0___
__00___1__
_10_1____1
______1__0
_0________
__1___1_1_
___0__1_1_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
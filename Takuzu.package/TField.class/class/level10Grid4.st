level10
level10Grid4

	| level |
	level := '0_0___1___
1_1___11__
____1_0_0_
__00______
______1___
_11______1
____1__00_
01___0_0__
_____1__1_
1_1_1_____'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
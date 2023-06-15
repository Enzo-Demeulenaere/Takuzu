level12
level12Grid1

	| level |
	level := '_1__11______
	__11___1____
	11_________1
	__00___0_0__
	_____0__0___
	0__0_00_00__
	_101_1___0__
	___1____0_1_
	1___0__0_1__
	__0_01_____0
	_______0__01
	____1__11___'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
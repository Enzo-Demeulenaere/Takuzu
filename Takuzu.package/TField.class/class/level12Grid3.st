level12
level12Grid3

	| level |
	level := '0_01__01___1
	0____1_1__1_
	_0_0_____0__
	___0___0_00_
	__1_________
	____0_0_0__1
	_0___1___0__
	_0_________1
	__1____1__1_
	0__0____1___
	_____0_0_0_1
	__0___1_____'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level8
level10Grid2

	| level |
	level := '0_0__01_10
	_________1
	_1________
	_0_____1_0
	__1__0_1_1
	____11____
	_00______0
	____0_____
	__0__1____
	_0__0_0___'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
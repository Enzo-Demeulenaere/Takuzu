level10
level10Grid3

	| level |
	level := '_1______10
	___1_1_0__
	__1_11____
	____1____0
	_0_____10_
	_0_____00_
	___10_____
	11_____11_
	_____11___
	___0____1_'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
level8
level8Grid4

	| level |
	level := '__11____
	________
	_00__0_0
	___0_0__
	1_1_____
	________
	10__11__
	___1____'.


	^ self grid:
		  (LevelImporter fromString: level fromPackage: self package)
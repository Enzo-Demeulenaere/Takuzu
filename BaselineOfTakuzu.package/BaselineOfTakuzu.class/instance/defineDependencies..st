baselines
defineDependencies: spec

	spec
		baseline: 'Bloc'
		with: [ spec repository: 'github://pharo-graphics/Bloc:dev-1.0/src' ].

	spec
		baseline: 'LevelImporter'
		with: [
		spec repository: 'github://Enzo-Demeulenaere/LevelImporter:main' ].

	spec
		baseline: 'Toplo'
		with: [ spec repository: 'github://plantec/Toplo/src' ].

	spec baseline: 'Containers-Array2D' with: [
		spec repository:
			'github://Enzo-Demeulenaere/Containers-Array2D:master/src' ]
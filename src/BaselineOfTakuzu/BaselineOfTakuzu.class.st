Class {
	#name : #BaselineOfTakuzu,
	#superclass : #BaselineOf,
	#category : #BaselineOfTakuzu
}

{ #category : #baselines }
BaselineOfTakuzu >> baseline: spec [

	<baseline>
	spec for: #common do: [
		self
			definePackages: spec;
			defineDependencies: spec;
			defineGroups: spec ]
]

{ #category : #baselines }
BaselineOfTakuzu >> defineDependencies: spec [

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

	spec baseline: 'ContainersArray2D' with: [
		spec repository:
			'github://Enzo-Demeulenaere/Containers-Array2D:master/src' ]
]

{ #category : #defaults }
BaselineOfTakuzu >> defineGroups: spec [

	^ spec
		  group: 'core' with: #( 'Takuzu' 'Takuzu-Tests' );
		  yourself
]

{ #category : #'as yet unclassified' }
BaselineOfTakuzu >> definePackages: spec [

	^ spec
		  package: 'Takuzu' with: [
			  spec requires:
					  #( 'Bloc' 'Toplo' 'LevelImporter' 'ContainersArray2D' ) ];
		  package: 'Takuzu-Tests' with: [ spec requires: #( 'Takuzu' ) ];
		  yourself
]

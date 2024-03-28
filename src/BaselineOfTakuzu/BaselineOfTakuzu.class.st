Class {
	#name : #BaselineOfTakuzu,
	#superclass : #BaselineOf,
	#category : 'BaselineOfTakuzu'
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
		baseline: 'Alexandrie'
		with: [ spec repository: 'github://pharo-graphics/Alexandrie:8008a3d/src' ].

	spec
		baseline: 'Bloc'
		with: [ spec repository: 'github://pharo-graphics/Bloc:2c698bc/src' ].

	spec
		baseline: 'LevelImporter'
		with: [
		spec repository: 'github://Enzo-Demeulenaere/LevelImporter:main' ].

	spec
		baseline: 'Album'
		with: [ spec repository: 'github://pharo-graphics/Album:3634b88/src' ].

	spec
		baseline: 'Toplo'
		with: [ spec repository: 'github://pharo-graphics/Toplo:672c93b/src' ].

	spec baseline: 'ContainersArray2D' with: [
		spec repository:
			'github://Enzo-Demeulenaere/Containers-Array2D:master/src' ].
		
	spec baseline: 'ApplicationGenerator' with: [
		spec repository:
			'github://tesonep/PharoApplicationGenerator:master/src' ].	
		
	spec baseline: 'ObjCBridge' with: [
		spec repository:
			'github://tesonep/objcbridge:master/src' ].	
]

{ #category : #defaults }
BaselineOfTakuzu >> defineGroups: spec [

	^ spec
		  group: 'core' with: #( 'Takuzu' 'Takuzu-Tests' 'ApplicationGenerator' 'ObjCBridge' );
		  yourself
]

{ #category : #'as yet unclassified' }
BaselineOfTakuzu >> definePackages: spec [

	^ spec
		  package: 'Takuzu' with: [
			  spec requires:
					  #( 'Alexandrie' 'Bloc' 'Album' 'Toplo' 'LevelImporter' 'ContainersArray2D' ) ];
		  package: 'Takuzu-Tests' with: [ spec requires: #( 'Takuzu' ) ];
		  yourself
]

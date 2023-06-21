as yet unclassified
definePackages: spec

	^ spec
		  package: 'Takuzu'
		  with: [ spec requires: #( 'Bloc' 'Toplo' 'LevelImporter' 'Containers-Array2D' ) ];
		  package: 'Takuzu-Tests' with: [ spec requires: #( 'Takuzu' ) ];
		  yourself
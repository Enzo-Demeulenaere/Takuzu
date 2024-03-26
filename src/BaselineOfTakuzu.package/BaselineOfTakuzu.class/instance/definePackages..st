as yet unclassified
definePackages: spec

	^ spec
		  package: 'Takuzu' with: [
			  spec requires:
					  #( 'Alexandrie' 'Bloc' 'Album' 'Toplo' 'LevelImporter' 'ContainersArray2D' ) ];
		  package: 'Takuzu-Tests' with: [ spec requires: #( 'Takuzu' ) ];
		  yourself
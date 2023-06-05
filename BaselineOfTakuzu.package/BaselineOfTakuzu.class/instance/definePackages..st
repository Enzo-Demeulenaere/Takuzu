as yet unclassified
definePackages: spec

	^ spec
		  package: 'Takuzu';
		  package: 'Takuzu-Tests'
		  with: [ spec requires: #( 'Takuzu' ) ];
		  yourself
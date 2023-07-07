private
classFor: aCharacter 
	^ characterClassBinding at: aCharacter ifAbsent: [ TBox unknown ]
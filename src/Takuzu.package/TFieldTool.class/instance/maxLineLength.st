accessing
maxLineLength

	^ (lines max: [ :each | each size ]) // 2
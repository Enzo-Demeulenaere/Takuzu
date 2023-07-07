as yet unclassified
openRandomFromTestGrids 
	| sel res |
	sel := (TFieldTool class selectors select: [ :each | each  beginsWith: 'grid_' ]) atRandom.
	res := TFieldTool perform: sel.
	^ self openWithModel: res
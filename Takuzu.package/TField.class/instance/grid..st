accessing
grid: aCTNewArray2D

	grid := aCTNewArray2D.
	grid withIndexes: [ :column :row |
		(grid at: column @ row) position: column @ row;
		field: self   ]
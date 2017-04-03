accessing
cellColumn: column row: rowIndex
	^ column cellMorphFor: (self elementAt: rowIndex) atRowIndex: rowIndex
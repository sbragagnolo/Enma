accessing
menuColumn: column row: rowIndex
	^ column menuFor: (self elementAt: rowIndex) atRowIndex: rowIndex on: self table
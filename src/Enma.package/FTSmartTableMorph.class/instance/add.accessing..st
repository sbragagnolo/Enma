adding
add: aColumnName accessing: anAccessorSymbol 
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: anAccessorSymbol;
		yourself.
	self addColumn: col.
	^ col
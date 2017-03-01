adding
add: aColumnName accessing: anAccessorSymbol display: aDisplayBlock
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: anAccessorSymbol;
		display: aDisplayBlock;
		yourself.
	self addColumn: col.
	^ col
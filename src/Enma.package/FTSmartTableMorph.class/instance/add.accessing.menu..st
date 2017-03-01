adding
add: aColumnName accessing: anAccessorSymbol menu: aMenuBuildingBlock
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: anAccessorSymbol;
		menu: aMenuBuildingBlock;
		yourself.
	self addColumn: col.
	^ col
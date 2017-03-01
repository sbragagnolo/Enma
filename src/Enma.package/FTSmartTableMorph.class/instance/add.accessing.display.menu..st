adding
add: aColumnName accessing: anAccessorSymbol display: aDisplayBlock menu: aMenuBuildingBlock 
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: anAccessorSymbol;
		display: aDisplayBlock;
		menu: aMenuBuildingBlock;
		yourself.
	self addColumn: col.
	^ col
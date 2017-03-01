adding
add: aColumnName menu: aMenuBuildingBlock
	| col |
	col := (FTSmartColumn id: aColumnName)
		menu: aMenuBuildingBlock;
		accessor: aColumnName asSymbol;
		yourself.
	self addColumn: col.
	^ col
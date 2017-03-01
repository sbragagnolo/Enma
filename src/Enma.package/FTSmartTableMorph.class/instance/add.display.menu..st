adding
add: aColumnName display: aDisplayBlock menu: aMenuBuildingBlock
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: #yourself;
		display: aDisplayBlock;
		menu: aMenuBuildingBlock;
		yourself.
	self addColumn: col.
	^ col
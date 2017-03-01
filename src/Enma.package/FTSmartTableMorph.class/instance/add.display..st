adding
add: aColumnName display: aDisplayBlock
	| col |
	col := FTSmartColumn
		id: aColumnName;
		accessor: #yourself;
		display: aDisplayBlock;
		yourself.
	self addColumn: col.
	^ col
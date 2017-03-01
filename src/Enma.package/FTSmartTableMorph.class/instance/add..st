adding
add: aColumnName
	| col |
	col := (FTSmartColumn id: aColumnName)
		accessor: aColumnName asSymbol;
		yourself.
	self addColumn: col.
	^ col
construction
table
	| table array |
	array := iterator asArray.
	table := FTSmartTableMorph new
		showRowIndex;
		elements: array;
		extent: 600 @ 200;
		yourself.
	table index menu: [ :menu :target | menu add: 'browse transactions' target: target selector: #browse ].
	display do: [ :aSymbol | table add: aSymbol ].
	^ table
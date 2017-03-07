construction
buildTable: table
	| array |
	array := iterator asArray.
	table
		showRowIndex;
		elements: array;
		extent: 600 @ 200;
		beMultipleSelection;
		yourself.
	self buildMenuOnTable: table.
	display do: [ :aSymbol | table add: aSymbol ].
	^ table
construction
buildTable: table
	table
		showRowIndex;
		elements: iterator;
		extent: 600 @ 200;
		beMultipleSelection;
		yourself.
	self buildMenuOnTable: table.
	display do: [ :aSymbol | table add: aSymbol ].
	^ table
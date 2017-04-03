examples
exampleTable2
	"Show a table with all Object methods, with a fixed width"

	<example>
	| table |
	table := FTSmartTableMorph new
		extent: 650 @ 500;
		add: #name menu: [ :menu :target | menu add: 'Browse' target: target selector: #browse ];
		add: #origin;
		add: #protocol;
		showRowIndex;
		elements: self elements;
		selectRowIndex: 1;
		showFirstRowSelection;
		onAnnouncement: FTSelectionChanged do: [ :ann | ('rows selected: ' , ann newSelectedRowIndexes asString) crLog ];
		onAnnouncement: FTStrongSelectionChanged do: [ :ann | ('double-click on row: ' , ann selectedRowIndex asString) crLog ];
		beMultipleSelection;
		yourself.
	^ table openInWindow
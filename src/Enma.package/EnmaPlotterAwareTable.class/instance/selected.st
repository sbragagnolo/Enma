accessing
selected
	^ selectedRowIndexes collect: [ :i | dataSource elementAt: i ]
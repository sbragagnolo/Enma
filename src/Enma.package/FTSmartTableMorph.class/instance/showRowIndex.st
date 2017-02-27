as yet unclassified
showRowIndex
	columns ifEmpty: [ columns := {(FTSmartIndexColumn id: '#')} ].
	columns first isIndex
		ifFalse: [ columns := {(FTSmartIndexColumn id: '#')} , columns ]
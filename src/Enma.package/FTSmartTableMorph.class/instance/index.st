accessing
index
	^ columns first isIndex
		ifTrue: [ columns first ]
		ifFalse: [ self error: 'No index column' ]
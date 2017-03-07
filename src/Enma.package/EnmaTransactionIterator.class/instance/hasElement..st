as yet unclassified
hasElement: anInteger
	(anInteger > limit or: [ anInteger = 0 ])
		ifTrue: [ ^ false ].
	elements size >= anInteger
		ifTrue: [ ^ true ].
	^ (source contents flatCollect: [ :b | b transactionsHashes ]) size >= anInteger
as yet unclassified
fetchNextElement
	| block txs |
	block := source next.
	txs := Set new.
	[ block isNotNil and: [ txs isEmpty ] ]
		whileTrue: [ txs := block transactions select: [ :t | self elementMeetsConditions: t ].
			block := source next ].
	elements addAll: txs
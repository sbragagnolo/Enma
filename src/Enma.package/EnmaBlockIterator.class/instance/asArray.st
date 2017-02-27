converting
asArray
	| collection index |
	collection := OrderedCollection new: limit.
	index := 1.
	[ index < limit and: [ self hasBlock: index ] ]
		whileTrue: [ collection add: (self fetchBlock: index).
			index := index + 1 ].
	^ collection asArray
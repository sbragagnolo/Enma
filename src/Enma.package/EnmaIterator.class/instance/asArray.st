converting
asArray
	| collection index |
	collection := OrderedCollection new: limit.
	index := 1.
	[ index < limit and: [ self hasElement: index ] ]
		whileTrue: [ collection add: (self fetchElement: index).
			index := index + 1 ].
	^ collection asArray
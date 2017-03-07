configuring
hasElement: anInteger
	(anInteger > limit or: [ anInteger = 0 ])
		ifTrue: [ ^ false ].
	elements size <= anInteger
		ifTrue: [ ^ true ].
	elements
		ifNotEmpty: [ (timecondition
				mayMeetConditionWithOlderBlocks: elements last timestamp)
				ifFalse: [ ^ false ] ]
		ifEmpty: [ (timecondition mayMeetConditionWithOlderBlocks: DateAndTime now)
				ifFalse: [ ^ false ] ].
	^ true
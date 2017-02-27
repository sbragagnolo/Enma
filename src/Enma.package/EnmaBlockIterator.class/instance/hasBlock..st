configuring
hasBlock: anInteger
	anInteger > limit
		ifTrue: [ ^ false ].
	blocks
		ifNotEmpty: [ (timecondition mayMeetConditionWithOlderBlocks: blocks last timestamp)
				ifFalse: [ ^ false ] ]
		ifEmpty: [ (timecondition mayMeetConditionWithOlderBlocks: DateAndTime now)
				ifFalse: [ ^ false ] ].
	^ true
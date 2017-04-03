access
hasElement: anInteger
	[ self fetchElement: anInteger.
	^ true ]
		on: Error
		do: [ ^ false ]
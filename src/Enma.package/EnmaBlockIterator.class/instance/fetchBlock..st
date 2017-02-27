access
fetchBlock: anInteger
	blocks size > anInteger
		ifTrue: [ ^ blocks at: anInteger ].
	self fetchBlock.
	^ self fetchBlock: anInteger
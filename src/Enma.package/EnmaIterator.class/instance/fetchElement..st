access
fetchElement: anInteger
	| previousSize |
	elements size > anInteger
		ifTrue: [ ^ elements at: anInteger ].
	previousSize := elements size.
	self fetchNextElement.
	previousSize == elements size
		ifTrue: [ self error: 'No next element ' ]
		ifFalse: [ ^ self fetchElement: anInteger ]
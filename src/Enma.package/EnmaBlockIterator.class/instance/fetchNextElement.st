access
fetchNextElement
	| element |
	element := elements ifEmpty: [ self connection eth getBlockByTag: 'latest' full: true ] ifNotEmpty: [ elements last parent ].
	[ self elementMeetsConditions: element ] whileFalse: [ element := element parent ].
	elements add: element
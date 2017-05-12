access
fetchNextElement
	| element |
	element := elements ifEmpty: [ self connection findBlockByTag: 'latest' full: true ] ifNotEmpty: [ elements last parent ].
	[ self elementMeetsConditions: element ] whileFalse: [ element := element parent ].
	elements add: element
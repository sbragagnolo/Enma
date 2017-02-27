access
fetchBlock
	| blok |
	blok := blocks ifEmpty: [ self connection eth getBlockByTag: 'latest' full: true ] ifNotEmpty: [ blocks last parent ].
	[ (condition value: blok) and: [ timecondition value: blok timestamp ] ] whileFalse: [ blok := blok parent ].
	blocks add: blok
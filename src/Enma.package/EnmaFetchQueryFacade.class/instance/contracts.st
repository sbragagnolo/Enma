as yet unclassified
contracts
	^ EnmaContractIterator new elements: (FogCache current contractBinds collect: [ :p | p proxy ])
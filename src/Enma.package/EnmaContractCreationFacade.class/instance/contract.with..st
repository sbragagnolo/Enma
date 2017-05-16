as yet unclassified
contract: aString with: aCollection
	^ (self connection findFileContractDescriptionByName: aString) contract
		newWith: aCollection
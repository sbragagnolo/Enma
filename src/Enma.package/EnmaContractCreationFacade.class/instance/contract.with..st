as yet unclassified
contract: aString with: aCollection
	^ (self session findFileContractDescriptionByName: aString) contract
		newWith: aCollection withSession: self session
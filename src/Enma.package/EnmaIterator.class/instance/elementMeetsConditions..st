access
elementMeetsConditions: anElement
	^ (self condition value: anElement) and: [ timecondition value: anElement timestamp ]
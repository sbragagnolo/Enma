access
elementMeetsConditions: anElement
	^ (condition value: anElement) and: [ timecondition value: anElement timestamp ]
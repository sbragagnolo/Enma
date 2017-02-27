as yet unclassified
elements
	^ (Morph selectors sorted: [ :a :b | a < b ])
		collect: [ :each | FTExampleMethodModel method: Morph >> each ]
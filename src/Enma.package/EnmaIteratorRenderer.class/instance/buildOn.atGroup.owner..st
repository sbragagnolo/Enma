builder
buildOn: aPlotter atGroup: aGroupName owner: anOwner
	| builder |
	builder := self buildOn: aPlotter atGroup: aGroupName.
	aPlotter
		connectFrom:
			(builder view elements
				detect: [ :e | (e shape isKindOf: EnmaRTMorph) and: [ e shape morph = anOwner ] ]) model
		to: builder createdElements first model
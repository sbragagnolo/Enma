as yet unclassified
overviewAccountsByKind
	| groupName groupTitle builder |
	groupName := ('overviewAccountsByKind' , value first number asString , '-' , value last number asString) asSymbol.
	groupTitle := 'Accounts x Type ' , value first number asString , '-' , value last number asString.
	builder := plotter builder: RTPieBuilder onGroup: groupName titledAs: groupTitle.
	FogCharts new buildBlockBasedAccountsByKindPie: builder for: value.
	plotter
		connectFrom: (builder view elements detect: [ :e | (e shape isKindOf: EnmaRTMorph) and: [ e shape morph = owner ] ]) model
		to: builder createdElements first model.
	plotter plot
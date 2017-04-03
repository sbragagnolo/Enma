as yet unclassified
overviewAccountsByKind
	| groupName groupTitle builder table subtable |
	groupName := ('overviewAccountsByKind' , value first number asString , '-' , value last number asString) asSymbol.
	groupTitle := 'Accounts x Type ' , value first number asString , '-' , value last number asString.
	builder := plotter builder: RTPieBuilder onGroup: groupName titledAs: groupTitle.
	FogCharts new buildBlockBasedAccountsByKindPie: builder for: value.
	table := (builder view elements detect: [ :e | (e shape isKindOf: EnmaRTMorph) and: [ e shape morph = owner ] ]) model.
	subtable := self projectSelection: 'subselection' from: table.
	plotter
		connectFrom: table to: subtable;
		connectFrom: subtable to: builder createdElements first model.
	plotter plot
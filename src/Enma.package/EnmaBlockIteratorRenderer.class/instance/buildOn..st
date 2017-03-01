builder
buildOn: aPlotter
	| builder |
	builder := aPlotter enmaBuilderOnGroup: #query.
	builder shapeBuilder
		enmaMorph;
		morph: (self buildTable: aPlotter createPlotterAwareTable).
	builder interactions bindAllMorphEvents.
	builder elementOn: iterator
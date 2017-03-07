builder
buildOn: aPlotter atGroup: aGroupName
	| builder element |
	builder := aPlotter enmaBuilderOnGroup: aGroupName titledAs: 'Table'.
	element := builder shapeBuilder enmaMorph.
	element morph: (self buildTable: aPlotter createPlotterAwareTable).
	builder interactions bindAllMorphEvents.
	builder elementOn: iterator.
	^ builder
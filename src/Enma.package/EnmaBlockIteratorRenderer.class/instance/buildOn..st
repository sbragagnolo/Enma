builder
buildOn: anEnmaBuilder
	anEnmaBuilder shapeBuilder
		enmaMorph;
		morph: self table.
	anEnmaBuilder interactions bindAllMorphEvents.
	anEnmaBuilder elementOn: iterator
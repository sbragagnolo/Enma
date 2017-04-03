as yet unclassified
edgeBuilder
	edgeBuilder
		ifNil: [ edgeBuilder := RTEdgeBuilder new.
			edgeBuilder allowRepetition ].
	edgeBuilder shape: self edgeShape.
	edgeBuilder view: composer view.
	^ edgeBuilder
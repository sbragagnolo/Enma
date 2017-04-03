access
project: aSelection
	^ EnmaRenderableIteratorProjection new
		source: self;
		selection: aSelection;
		yourself
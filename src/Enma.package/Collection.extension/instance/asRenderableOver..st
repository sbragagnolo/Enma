*Enma
asRenderableOver: aPlotter
	^ EnmaRenderableValue new
		value: self asArray;
		plotter: aPlotter;
		yourself
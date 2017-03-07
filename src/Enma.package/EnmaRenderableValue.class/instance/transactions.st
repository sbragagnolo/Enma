accessing
transactions
	(EnmaRenderableTransactionIterator new source: value) renderer
		buildOn: plotter
		atGroup: #transactions
		owner: owner.
	plotter plot
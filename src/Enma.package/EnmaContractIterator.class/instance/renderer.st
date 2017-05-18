accessing
renderer
	^ EnmaContractIteratorRenderer new
		display: display;
		iterator: self;
		yourself
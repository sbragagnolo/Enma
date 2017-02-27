rendering
renderer
	^ EnmaBlockIteratorRenderer new
		display: display; 
		iterator: self;
		yourself
accessing
elements: aSetOfElements
	self
		dataSource:
			(FTSmartColumnDataSource new
				elements: aSetOfElements;
				yourself)
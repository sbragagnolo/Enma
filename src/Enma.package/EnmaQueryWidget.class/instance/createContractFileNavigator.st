initialization
createContractFileNavigator
	^ self newList
		items:
			(FileLocator contractsFolder entries
				collect: [ :c | 
					EnmaContract new
						entryReference: c;
						yourself ])
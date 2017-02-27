adding
addQueryTab
	manager
		addTab:
			(self newEnmaTab
				label: 'Query';
				icon: Smalltalk ui icons nautilusIcon;
				model: EnmaQueryWidget new;
				yourself)
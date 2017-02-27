initialization
initializeWidgets
	file := self createFileMenu.
	edit := self createEditMenu.
	run := self createRunMenu.
	tabs := self createTabsMenu.
	help := self createHelpMenu.
	menu := MenuModel new.
	menu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'File';
						subMenu: file ];
				addItem: [ :item | 
					item
						name: 'Edit';
						subMenu: edit ];
				addItem: [ :item | 
					item
						name: 'Run';
						subMenu: run ];
				addItem: [ :item | 
					item
						name: 'Tabs';
						subMenu: tabs ];
				addItem: [ :item | 
					item
						name: 'Help';
						subMenu: help ] ]
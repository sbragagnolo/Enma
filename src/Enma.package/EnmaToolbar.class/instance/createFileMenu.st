initialization
createFileMenu
	| submenu |
	submenu := MenuModel new.
	submenu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Save';
						action: [ self saveScript ];
						shortcut: $s control ];
				addItem: [ :item | 
					item
						name: 'Save as';
						action: [ self saveScriptAs ] ];
				addItem: [ :item | 
					item
						name: 'Open';
						action: [ self openScript ];
						shortcut: $o control ];
				addItem: [ :item | 
					item
						name: 'Export plot';
						action: [ self exportPlot ] ] ].
	^ submenu
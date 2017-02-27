initialization
createHelpMenu
	| submenu |
	submenu := MenuModel new.
	submenu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Search';
						action: [ self searchHelp ];
						shortcut: $h control ];
				addItem: [ :item | 
					item
						name: 'Report issue';
						action: [ self reportIssue ];
						shortcut: $i control ];
				addItem: [ :item | 
					item
						name: 'About';
						action: [ self aboutThisApp ] ] ].
	^ submenu
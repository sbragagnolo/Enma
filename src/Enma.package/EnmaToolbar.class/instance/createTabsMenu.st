initialization
createTabsMenu
	| submenu |
	submenu := MenuModel new.
	submenu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'New tab';
						action: [ self createNewTab ];
						shortcut: $t control ];
				addItem: [ :item | 
					item
						name: 'Close all tabs';
						action: [ self closeAllTabs ] ];
				addItem: [ :item | 
					item
						name: 'Save all tabs';
						action: [ self saveAllTabs ] ];
				addItem: [ :item | 
					item
						name: 'Close all tabs but current';
						action: [ self closeAllTabsButCurrent ] ] ].
	^ submenu
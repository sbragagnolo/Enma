initialization
createRunMenu
	| submenu |
	submenu := MenuModel new.
	submenu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Run';
						action: [ self runScript ];
						shortcut: $r control ];
				addItem: [ :item | 
					item
						name: 'Debug';
						action: [ self debugScript ];
						shortcut: $d control ] ].
	^ submenu
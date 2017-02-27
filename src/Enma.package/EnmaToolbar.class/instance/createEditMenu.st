initialization
createEditMenu
	| submenu |
	submenu := MenuModel new.
	submenu
		addGroup: [ :group | 
			group
				addItem: [ :item | 
					item
						name: 'Copy';
						action: [ self copyScript ];
						shortcut: $c control ];
				addItem: [ :item | 
					item
						name: 'Paste';
						action: [ self pasteScript ];
						shortcut: $p control ];
				addItem: [ :item | 
					item
						name: 'Find';
						action: [ self findIntoScript ];
						shortcut: $f control ];
				addItem: [ :item | 
					item
						name: 'Select all';
						action: [ self selectAllScript ];
						shortcut: $a control ] ].
	^ submenu
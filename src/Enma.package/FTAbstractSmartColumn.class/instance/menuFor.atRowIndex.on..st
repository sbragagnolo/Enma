delegation
menuFor: aDomainObject atRowIndex: anIndex on: aTable
	^ menuBuilder
		ifNotNil: [ | menu |
			menu := UIManager default newMenuIn: aTable for: self.
			menuBuilder cull: menu cull: aDomainObject cull: anIndex cull: aTable .
			menu ]
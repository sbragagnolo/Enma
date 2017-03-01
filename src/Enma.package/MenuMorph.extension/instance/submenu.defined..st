*Enma
submenu: aLabelString defined: aBlock
	| sub |
	sub := MenuMorph new.
	aBlock value: sub.
	self add: aLabelString subMenu: sub.
	^ self
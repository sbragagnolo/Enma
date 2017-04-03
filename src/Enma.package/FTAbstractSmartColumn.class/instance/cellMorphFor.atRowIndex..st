delegation
cellMorphFor: aDomainObject atRowIndex: anIndex
	^ self buildCellForValue: (self valueToShow: aDomainObject atRowIndex: anIndex) atRowIndex: anIndex
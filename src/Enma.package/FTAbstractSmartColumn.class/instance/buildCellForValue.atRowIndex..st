delegation
buildCellForValue: aValue atRowIndex: anIndex
	^ FTIndexAwareCellMorph new
		rowIndex: anIndex;
		cellInset: 5;
		addMorphBack: aValue asMorph;
		yourself
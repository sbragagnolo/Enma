testing
includesPoint: aPoint
	| invertedPoint ret |
	(matrix sx = 0 or: [ matrix sy = 0 ])
		ifTrue: [ ^ false ].
	invertedPoint := matrix inverseTransform: aPoint.
	ret := self basicEncompassingRectangle containsPoint: invertedPoint.
	
	^ ret
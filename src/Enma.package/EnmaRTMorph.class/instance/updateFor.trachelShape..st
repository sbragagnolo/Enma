hooks
updateFor: anElement trachelShape: trachelShape
	trachelShape
		extent: morph extent;
		morph: morph;
		color: (self colorFor: anElement);
		strokePaint: (self borderColorFor: anElement);
		rotateByDegrees: (self rotationFor: anElement);
		scaleBy: (self scaleFor: anElement)
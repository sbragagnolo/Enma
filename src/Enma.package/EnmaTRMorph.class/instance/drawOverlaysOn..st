drawing
drawOverlaysOn: aCanvas
	"draw an overlays (after all submorphs being drawn)"

	| pathTransform |
	pathTransform := aCanvas pathTransform.
	pathTransform
		restoreAfter: [ morph hasFocus not
				ifTrue: [ aCanvas setPaint: (Color white alpha: 0.05).
					aCanvas drawShape: morph innerBounds ] ]	
				" pathTransform translateBy: morph innerBounds topLeft."
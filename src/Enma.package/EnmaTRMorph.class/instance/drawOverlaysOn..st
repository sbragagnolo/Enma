drawing
drawOverlaysOn: aCanvas
	"draw an overlays (after all submorphs being drawn)"

	| pathTransform |
	pathTransform := aCanvas pathTransform.
	pathTransform
		restoreAfter: [" pathTransform translateBy: morph innerBounds topLeft."
			morph hasFocus not
				ifTrue: [ aCanvas setPaint: (Color white alpha: 0.05).
					aCanvas drawShape: (0 @ 0 extent: morph innerBounds extent) ] ]
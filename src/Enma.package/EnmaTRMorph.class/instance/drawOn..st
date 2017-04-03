drawing
drawOn: athensCanvas
	"	self halt."

	| clip |
	morph position: self position.
	clip := morph clippingBounds.
	athensCanvas
		clipBy: clip
		during: [ morph fullDrawOnAthensCanvas: athensCanvas.
			self drawOverlaysOn: athensCanvas ]
drawing
drawOn: athensCanvas
	"	self halt."

	| clip |
	morph position: self position.
	self position logCr. 
	morph fullDrawOnAthensCanvas: athensCanvas.
	clip := morph clippingBounds.
	athensCanvas clipBy: clip during: [ self drawOverlaysOn: athensCanvas ]
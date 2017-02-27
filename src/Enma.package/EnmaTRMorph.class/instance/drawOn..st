drawing
drawOn: athensCanvas
	"	self halt."

	| clip | 
	morph fullDrawOnAthensCanvas: athensCanvas.
	clip := morph clippingBounds.
	athensCanvas clipBy: clip during: [ self drawOverlaysOn:athensCanvas ]
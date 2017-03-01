rendering
renderQuery: anEnmaRenderable
	"	anEnmaRenderable renderer rtTableElement renderInto: self plottingAreaView."

	plotter cleanUp.
	anEnmaRenderable renderer buildOn: plotter.
	plotter plot
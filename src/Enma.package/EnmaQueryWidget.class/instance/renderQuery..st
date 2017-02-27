rendering
renderQuery: anEnmaRenderable
	"	anEnmaRenderable renderer rtTableElement renderInto: self plottingAreaView."

	| builder |
	view @ RTDraggableView.
	builder := EnmaPloterBuilder new.
	builder view: view.
	anEnmaRenderable renderer buildOn: builder.
	builder render.
	view @ RTDraggableView.
	view signalUpdate
as yet unclassified
initializeWithView: aView
	groups := Dictionary new.
	aView @ RTDraggableView.
	aView @ RTDoubleScrollBar.
	aView @ RTZoomableView.
	aView signalUpdate.
	composer := RTComposer new.
	composer view: aView.
	layout := RTVerticalLineLayout new
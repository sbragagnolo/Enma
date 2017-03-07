as yet unclassified
initializeWithView: aView
	groups := Dictionary new.
	edges := OrderedCollection new.
	aView @ RTDraggableView.
	aView @ RTDoubleScrollBar.
	aView @ RTZoomableView.
	aView signalUpdate.
	composer := RTComposer new.
	composer view: aView.
	composer gap: 200.
	layout := RTHorizontalLineLayout new
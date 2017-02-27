initialization
createPlottingArea
	| diagram |
	diagram := self instantiate: RoassalModel.
	diagram
		script: [ :aView :canvas | 
			self view: aView.
			aView @ RTDraggableView.
			aView signalUpdate ].
	^ diagram
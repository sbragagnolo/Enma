initialization
createPlottingArea
	| diagram |
	diagram := self instantiate: RoassalModel.
	plotter := EnmaPloter new.
	diagram script: [ :aView :canvas | plotter initializeWithView: aView ].
	^ diagram
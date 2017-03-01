initialization
createPlottingArea
	| diagram |
	diagram := self instantiate: RoassalModel.
	plotter := EnmaPlotter new.
	diagram script: [ :aView :canvas | plotter initializeWithView: aView ].
	^ diagram
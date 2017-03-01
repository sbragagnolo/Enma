as yet unclassified
overview
	| composer |
	composer := RTComposer new.
	composer gap: 35.
	composer view: builder view.
	builder build.
	builder render.
	composer group: #root.
	FogCharts new blockBasedMultiChart: {block} onComposer: composer.
	composer nameGroup: #root as: 'Table'.
"	composer layout: RTGridLayout new ."
	builder view signalUpdate
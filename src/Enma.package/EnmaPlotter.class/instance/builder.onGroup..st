as yet unclassified
builder: aBuilderClass onGroup: aGroupTag
	| builder |
	builder := aBuilderClass new.
	builder interaction draggable.
	builder view: composer view.
	^ groups at: aGroupTag put: builder
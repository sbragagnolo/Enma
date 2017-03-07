as yet unclassified
builder: aBuilderClass onGroup: aGroupTag titledAs: aTitle
	| builder |
	groups
		at: aGroupTag
		ifPresent: [ :b | composer removeIfExists: aGroupTag ].
	builder := aBuilderClass new.
	builder interaction draggable.
	builder view: composer view.
	groups
		at: aGroupTag
		put:
			(EnmaPloterEntry new
				builder: builder;
				name: aTitle;
				yourself).
	^ (groups at: aGroupTag) builder
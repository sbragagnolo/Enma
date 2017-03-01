as yet unclassified
plot
	groups
		keysAndValuesDo: [ :name :builder | 
			composer removeIfExists: name.
			builder view: composer view.
			builder build.
			composer group: name ].
	composer layout: layout.
	composer view signalUpdate
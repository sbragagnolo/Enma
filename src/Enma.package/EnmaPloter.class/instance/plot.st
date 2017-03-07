as yet unclassified
plot
	composer gap: 200.
	groups keysDo: [ :k | composer removeIfExists: k ].
	composer view removeAllElements.
	groups
		keysAndValuesDo: [ :name :entry | 
			entry builder build.
			entry builder renderIn: composer view.
			composer group: name.
			composer nameGroup: name as: entry name ].
	"	composer layout: layout."
	composer view addAll: (edges collect: #value).
	composer view signalUpdate
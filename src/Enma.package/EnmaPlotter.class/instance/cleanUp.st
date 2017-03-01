as yet unclassified
cleanUp
	groups keysDo: [ : name | composer removeIfExists: name ].
	groups removeAll. 
	composer view signalUpdate.
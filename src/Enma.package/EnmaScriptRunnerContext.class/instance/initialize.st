initialization
initialize
	super initialize.
	plot := EnmaPlotterFacade new.
	fetch := EnmaFetchQueryFacade new .
	export := EnmaExporterFacade new. 
	create := EnmaContractCreationFacade new.
	send := EnmaTransactionSenderFacade new. 
	
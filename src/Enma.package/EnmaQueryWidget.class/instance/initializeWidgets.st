initialization
initializeWidgets
	queryEditor := self createQueryEditor.
	scriptFileNavigator := self createScriptFileNavigator.
	contractFileNavigator := self createContractFileNavigator.
	plottingArea := self createPlottingArea.
	labelContract := self newLabel
		label: 'Contracts';
		yourself.
	labelFile := self newLabel
		label: 'Scripts';
		yourself.
	labelQuery := self newLabel
		label: 'Plotting query';
		yourself.
	labelPlottingArea := self newLabel
		label: 'Plotting area';
		yourself
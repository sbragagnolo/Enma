construction
buildMenuOnTable: table
	table index
		menu: [ :menu :target :index :tab | 
			| renderable |
			renderable := (table hasMultipleSelection
				ifTrue: [ table elements project: [ :e | table selected includes: e ] ]
				ifFalse: [ target ]) asRenderableOver: tab plotter.
			renderable owner: tab.
			menu
				submenu: #Overview
					defined: [ :m | 
					m
						add: 'Accounts by kind'
						target: renderable
						selector: #overviewAccountsByKind.
					table hasMultipleSelection
						ifTrue: [ m
								add: 'Ammount of transactions'
									target: renderable
									selector: #overviewAmountOfTransactions;
								add: 'Miners'
									target: renderable
									selector: #overviewDistributionOfCredibility;
								add: 'Difficulty - Gas correlation'
									target: renderable
									selector: #overviewDifficultyGasCorrelation;
								add: 'Gas price x hour '
									target: renderable
									selector: #overviewGasPriceXHour;
								add: 'Transactions x hour'
									target: renderable
									selector: #overviewAmountOfTransactionsXHour ] ];
				add: 'Transactions' target: renderable selector: #transactions;
				add: 'Contract activations' target: renderable selector: #contracts ]
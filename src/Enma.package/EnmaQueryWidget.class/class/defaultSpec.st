as yet unclassified
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: [ :row | row add: #plottingArea ];
"				newRow: #labelPlottingArea height: self toolbarHeight;"
				newRow: [ :row | 
					row
						newColumn: [ :col | 
							col
								newRow: #labelQuery height: self toolbarHeight;
								newRow: #queryEditor ];
						newColumn: [ :col | 
							col
								newRow: #labelFile height: self toolbarHeight;
								newRow: #scriptFileNavigator ]
							width: 200;
						newColumn: [ :col | 
							col
								newRow: #labelContract height: self toolbarHeight;
								newRow: #contractFileNavigator ]
							width: 200 ]
					height: self editionStripeHeight ]
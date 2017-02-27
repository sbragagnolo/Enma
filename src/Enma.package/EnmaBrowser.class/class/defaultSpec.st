as yet unclassified
defaultSpec
	<spec: #default>
	^ SpecLayout composed
		newColumn: [ :c | 
			c
				newRow: [ :row | row add: #toolBar ] height: self toolbarHeight;
				newRow: #manager ]
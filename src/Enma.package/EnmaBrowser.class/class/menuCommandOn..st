as yet unclassified
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #Enma)
		order: 1.0;
		target: self;
		icon: (EnmaIcons anvilIcon scaledToSize: 16 @ 16).
	(aBuilder item: #'Enma live analyser')
		order: 1.0;
		parent: #Enma;
		action: [ self new openWithSpec ];
		target: self;
		icon: (EnmaIcons necronomiconIcon scaledToSize: 16 @ 16)
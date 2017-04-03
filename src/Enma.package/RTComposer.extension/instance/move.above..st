*Enma
move: name1 above: name2
	| g1 g2 |
	g1 := mapping at: name1.
	g2 := mapping at: name2.
	g2
		when: TRMouseDragEnd
		do: [ TRConstraint move: g1 above: g2.
			g1 translateBy: 0 @ gap negated ].
	TRConstraint move: g1 above: g2.
	g1 translateBy: 0 @ gap negated
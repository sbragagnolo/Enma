*Enma
remove
	"Remove the element from the view. Edges that may be connected are also removed"

	view ifNil: [ self error: ' bla ' ].
	view removeElement: self.
	view := nil.
	self removeConnectedEdges
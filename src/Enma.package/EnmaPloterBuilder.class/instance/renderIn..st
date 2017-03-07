hooks
renderIn: aView
	aView addAll: self createdElements.
	self interaction draggable.
	self createdElements do: [ :e | interactionBuilder setUpElement: e ].
	self createdElements do: #updateShape
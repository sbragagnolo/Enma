hooks
renderIn: aView
	aView addAll: self createdElements.
	self createdElements do: [ :e | interactionBuilder setUpElement: e ].
	self createdElements do: #updateShape
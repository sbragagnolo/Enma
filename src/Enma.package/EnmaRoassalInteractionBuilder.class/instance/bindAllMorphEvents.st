public
bindAllMorphEvents
	self
		when: TRMouseClick
		do: [ :event | 
			event element shape morph mouseDown: event morphicEvent.
			event element shape morph mouseUp: event morphicEvent.
			event element shape morph click: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRMouseDoubleClick
		do: [ :event | 
			event element shape morph mouseDown: event morphicEvent.
			event element shape morph mouseUp: event morphicEvent.
			event element shape morph doubleClick: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRMouseMove
		do: [ :event | 
			event element shape morph mouseMove: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRMouseEnter
		do: [ :event | 
			event element shape morph mouseEnter: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRMouseLeave
		do: [ :event | 
			event element shape morph mouseLeave: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRMouseWheelEvent
		do: [ :event | 
			event element shape morph mouseWheel: event morphicEvent.
			event element view signalUpdate ].
	self
		when: TRKeyDown
		do: [ :event | 
			event element shape morph handleKeystroke: event morphicEvent.
			event element view signalUpdate ]
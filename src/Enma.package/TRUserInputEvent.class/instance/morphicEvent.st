accessing
morphicEvent
	^ morphicEvent shallowCopy
		wasHandled: false;
		setPosition: position;
		yourself
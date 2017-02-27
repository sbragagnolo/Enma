private - actions
runScript
	queryEditor accept.
	self
		renderQuery: (Smalltalk compiler evaluate: queryEditor text for: queryEditor doItReceiver logged: false)
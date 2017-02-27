initialization
initialize
	super initialize.
	isForScriptingHolder := false asValueHolder.
	doItContext := nil asValueHolder.
	doItReceiver := nil asValueHolder
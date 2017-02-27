initialization
createQueryEditor
	^ (self instantiate: EnmaTextModel)
		beForScripting;
		aboutToStyle: true;
		behavior: EnmaScriptRunnerContext;
		doItReceiver: EnmaScriptRunnerContext new;
		yourself
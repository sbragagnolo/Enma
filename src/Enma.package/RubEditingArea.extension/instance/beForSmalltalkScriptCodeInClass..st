*Enma
beForSmalltalkScriptCodeInClass: aClass
	self editingMode: (RubSmalltalkScriptingMode new
		classOrMetaClass: aClass;
		yourself)
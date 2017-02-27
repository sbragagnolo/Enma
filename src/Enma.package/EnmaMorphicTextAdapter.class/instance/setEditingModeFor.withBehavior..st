private
setEditingModeFor: textArea withBehavior: behavior
	behavior
		ifNil: [ self isForSmalltalkCode
				ifTrue: [ textArea beForSmalltalkScripting ]
				ifFalse: [ textArea beForPlainText ] ]
		ifNotNil: [ :class | 
			self isForScripting
				ifTrue: [ textArea beForSmalltalkScriptCodeInClass: class ]
				ifFalse: [ textArea beForSmalltalkCodeInClass: class ] ].
	textArea
		withCodeSizeFeedback;
		withLineNumbers
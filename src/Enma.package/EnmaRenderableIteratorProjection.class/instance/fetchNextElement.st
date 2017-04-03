access
fetchNextElement
	| element |
	[ source atEnd ]
		whileFalse: [ element := source next.
			((self condition value: element) and: [ selection value: element ])
				ifTrue: [ elements add: element.
					^ self ] ]
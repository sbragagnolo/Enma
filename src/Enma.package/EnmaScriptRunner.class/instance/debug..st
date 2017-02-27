running
debug: anEnmaScript
	| methodNode |
	methodNode := self class compiler
		source: anEnmaScript content readStream;
		class: context class;
		context: nil;
		requestor: self;
		noPattern: true;
		failBlock: [ ^ nil ];
		translate.
	^ self privateDebugMethod: methodNode generateWithSource
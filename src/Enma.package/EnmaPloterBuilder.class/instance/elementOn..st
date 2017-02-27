protected
elementOn: anObject
	| element |
	element := shapeBuilder elementOn: anObject.
	"element announcer: view announcer. "
	interactionBuilder setUpElements: element.
	^ element
accessing
edges
	shapeBuilder shape: RTBezier3Line new.
	edgeBuilder
		elements: self createdElements;
		view: view;
		shapeBuilder: shapeBuilder.
	^ edgeBuilder
accessing
fetchElement: anInteger
	anInteger logCr.
	^ FogPropertyRow new
		property: (elements at: anInteger);
		source: source;
		yourself
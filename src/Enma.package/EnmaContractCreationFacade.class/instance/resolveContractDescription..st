as yet unclassified
resolveContractDescription: aString
	^ FogContractDescription instances
		detect: [ :c | c name = aString ]
		ifNone: [ | entry |
			entry := {aString asFileReference.
			(FileLocator contractsFolder / (aString , '.sol'))}
				detect: [ :f | f exists ]
				ifNone: [ self error: ' ' , aString , ' is not a valid contract name or file path' ].
			FogFileContractDescription loadFromFileReference: entry connection: self connection ]
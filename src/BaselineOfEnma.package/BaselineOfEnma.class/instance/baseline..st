baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				project: 'Roassal2'
				with: [ spec
						className: #ConfigurationOfRoassal2;
						version: #stable;
						repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
			spec baseline: 'SmartShackle' with: [ spec repository: 'github://sbragagnolo/SmartShackle/src' ].
			spec package: #Enma with: [ spec requires: #( Roassal2 SmartShackle) ] ]

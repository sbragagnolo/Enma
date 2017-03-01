*Enma
removeIfExists: aGroupID
	(self hasGroup: aGroupID)
		ifTrue: [ self removeGroup: aGroupID ]
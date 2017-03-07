enumerating
do: aBlockClosure
	1 to: limit do: [ :idx | 
		(self hasElement: idx)
			ifTrue: [ aBlockClosure value: (self fetchElement: idx) ]
			ifFalse: [ ^ self ] ].
	^ self
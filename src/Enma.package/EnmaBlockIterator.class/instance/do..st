enumerating
do: aBlockClosure
	1 to: limit do: [ :idx | 
		(self hasBlock: idx)
			ifTrue: [ aBlockClosure value: (self fetchBlock: idx) ]
			ifFalse: [ ^ self ] ].
	^ self
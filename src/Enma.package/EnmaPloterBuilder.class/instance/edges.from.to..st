adding - edges
edges: objects from: fromBlock to: toBlock
	^ self edges
			objects: objects;
			connectFrom: fromBlock to: toBlock
		
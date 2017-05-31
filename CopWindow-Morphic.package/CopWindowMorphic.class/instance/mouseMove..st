event handling
mouseMove: evt
	isDragging ifTrue: [ 
		| nextPos xDiff yDiff |
		xDiff := (evt startPoint x) - (self position x).
		yDiff := (evt startPoint y) - (self position y).
		nextPos := ((evt endPoint x) - (xDiff))@((evt endPoint y) - (yDiff)).
		self position: nextPos ].
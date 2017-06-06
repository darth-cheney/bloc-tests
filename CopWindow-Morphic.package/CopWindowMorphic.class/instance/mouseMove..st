event handling
mouseMove: evt
	isDragging ifTrue: [ 
		| nextPos xDiff yDiff |
		xDiff := (evt startPoint x) - (self position x).
		yDiff := (evt startPoint y) - (self position y).
		nextPos := ((evt endPoint x) - (xDiff))@((evt endPoint y) - (yDiff)).
		self position: nextPos.
		evt wasHandled.
		^ self ].
	isStretching ifTrue: [ ^ self stretchFromMoveEvent: evt ].
	((self resizeAreaBounds) containsPoint: evt cursorPoint)
	ifTrue: [ ActiveHand showTemporaryCursor: Cursor resizeBottomRight]
	ifFalse: [ ActiveHand showTemporaryCursor: nil ].

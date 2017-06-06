as yet unclassified
stretchFromMoveEvent: evt
	| xDiff yDiff newExtent |
	xDiff := (evt startPoint x) - (self extent x).
	yDiff := (evt startPoint y) - (self extent y).
	newExtent := ((evt endPoint x) - xDiff)@((evt endPoint y) - yDiff).
	self extent: newExtent.
	evt wasHandled.
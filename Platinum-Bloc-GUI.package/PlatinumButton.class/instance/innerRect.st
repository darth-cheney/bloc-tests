as yet unclassified
innerRect
	"Respond with a vector-accurate innter rectangle
	of the receiver's bounds (0.5 adjusted for drawing)"
	^ Rectangle point: (0.5@0.5) point: (self boundsInLocal corner - 0.5).
as yet unclassified
innerRect
	"Respond with the inner button border bounds
	adjusted for vectorization"
	^ Rectangle point: (self boundsInLocal origin + 3.5) point: (self boundsInLocal corner - 3.5).
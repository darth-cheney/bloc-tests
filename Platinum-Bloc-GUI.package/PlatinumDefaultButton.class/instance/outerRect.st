as yet unclassified
outerRect
	"Respond with receiver's outer border bounds
	adjusted for vector drawing"
	^ Rectangle point: (self boundsInLocal origin + 0.5) point: (self boundsInLocal corner - 0.5).
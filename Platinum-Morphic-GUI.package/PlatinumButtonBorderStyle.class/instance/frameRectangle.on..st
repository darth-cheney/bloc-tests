drawing
frameRectangle: aRect on: aCanvas
	"aCanvas
		drawPolygon: (self verticesForRect: aRect)
		fillStyle: (Color red alpha: 0.5)
		borderWidth: 0
		borderColor: Color transparent."
	self drawOuterRect: aRect on: aCanvas.
	
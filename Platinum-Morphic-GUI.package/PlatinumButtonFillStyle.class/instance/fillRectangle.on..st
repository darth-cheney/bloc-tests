action
fillRectangle: aRect on: aCanvas
	aCanvas
		drawPolygon: (self verticesForRect: aRect)
		fillStyle: baseColor
		borderWidth: 1
		borderColor: baseColor.
	self
		drawUpperHiliteRect: aRect on: aCanvas;
		drawDarkInnerHiliteRect: aRect on: aCanvas;
		drawLiteInnerHiliteRect: aRect on: aCanvas.
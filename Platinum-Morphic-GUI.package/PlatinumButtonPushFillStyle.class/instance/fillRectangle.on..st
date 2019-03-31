action
fillRectangle: aRect on: aCanvas
	aCanvas
		drawPolygon: (self verticesForRect: aRect)
		fillStyle: baseColor
		borderWidth: 1
		borderColor: baseColor.
	self
		drawDarkerHighlight: aRect on: aCanvas;
		drawDarkHighlight: aRect on: aCanvas;
		drawLighterHighlight: aRect on: aCanvas;
		drawLightHighlight: aRect on: aCanvas.
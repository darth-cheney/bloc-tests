drawing
frameRectangle: aRect on: aCanvas
	self
		drawOuterRect: (aRect insetBy: 3) on: aCanvas.
	"The default button border adds three 'bands' around
	the regular border. We name them inner, middle, and outer
	going outward"
	self
		drawInnerWithRect: (aRect insetBy: 2) on: aCanvas;
		drawMidWithRect: (aRect insetBy: 1) on: aCanvas;
		drawOuterWithRect: aRect on: aCanvas
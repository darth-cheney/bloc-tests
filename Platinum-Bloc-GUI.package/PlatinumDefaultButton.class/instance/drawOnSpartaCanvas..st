drawing
drawOnSpartaCanvas: aCanvas
	self drawOuterBorderOn: aCanvas inRect: (self outerRect).
	self drawInnerBorderOn: aCanvas inRect: (self outerRect).
	self drawInnerShadowOn: aCanvas inRect: (self outerRect).
	super drawOnSpartaCanvas: aCanvas.
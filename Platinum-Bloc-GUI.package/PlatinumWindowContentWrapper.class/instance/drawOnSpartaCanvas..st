initialization
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: (Color r: 153 g: 153 b: 153 range: 255);
		path: (self boundsInLocal);
		draw.
	self drawInnerRectsOn: aCanvas.
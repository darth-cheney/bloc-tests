drawing
drawOnSpartaCanvas: aCanvas
	aCanvas fill
		paint: Color black;
		path: self boundsInLocal;
		draw.
	
	self drawInnerRectsOn: aCanvas.
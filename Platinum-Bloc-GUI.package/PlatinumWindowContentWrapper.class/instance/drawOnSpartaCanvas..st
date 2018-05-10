drawing
drawOnSpartaCanvas: aCanvas
	| rect |
	super drawOnSpartaCanvas: aCanvas.
	self drawInnerSidesOn: aCanvas.
	rect := Rectangle point: (self boundsInLocal origin + 1.5) point: (self boundsInLocal corner - 1.5).
	aCanvas stroke
		drawOptions: (aCanvas drawOptions antialiasNone);
		paint: Color black;
		path: rect;
		draw.
	
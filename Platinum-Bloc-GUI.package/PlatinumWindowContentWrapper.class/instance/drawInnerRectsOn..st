initialization
drawInnerRectsOn: aCanvas
	| rect1 rect2 |
	rect1 := Rectangle
		left: (self boundsInLocal left + 1)
		right: (self boundsInLocal right - 1)
		top: (self boundsInLocal top + 1)
		bottom: (self boundsInLocal bottom - 1).
	
	rect2 := Rectangle
		left: (self boundsInLocal left + 2)
		right: (self boundsInLocal right - 2)
		top: (self boundsInLocal top + 2)
		bottom: (self boundsInLocal bottom - 2).
	
	aCanvas fill
		paint: Color black;
		path: rect1;
		draw.
	aCanvas fill
		paint: Color white;
		path: rect2;
		draw.
	
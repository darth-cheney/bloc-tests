drawing
drawOn: aCanvas
	| boundingRect |
	boundingRect := self bounds insetBy: 1.
	super drawOn: aCanvas.
	
	aCanvas 
		frameAndFillRectangle: boundingRect
		fillColor: self color 
		borderWidth:  0
		borderColor: Color transparent;
		
		line: (boundingRect origin x)@(boundingRect corner y - 1)
		to: (boundingRect origin x)@(boundingRect corner y - 1)
		width: 1
		color: self mixedColor;
		
		line: (boundingRect origin x)@(boundingRect corner y - 2)
		to: boundingRect origin
		width: 1
		color: self lightHighlightColor;
		
		line: boundingRect origin
		to: (boundingRect corner x - 2)@(boundingRect origin y)
		width: 1
		color: self lightHighlightColor;
		
		line: (boundingRect corner x - 1)@(boundingRect origin y)
		to: (boundingRect corner x - 1)@(boundingRect origin y)
		width: 1
		color: self mixedColor;
		
		line: (boundingRect corner x- 1)@(boundingRect origin y + 1)
		to: boundingRect corner - 1
		width: 1
		color: self darkHighlightColor;
		
		line: boundingRect corner - 1
		to: (boundingRect origin x + 1)@(boundingRect corner y - 1)
		width: 1
		color: self darkHighlightColor.
	
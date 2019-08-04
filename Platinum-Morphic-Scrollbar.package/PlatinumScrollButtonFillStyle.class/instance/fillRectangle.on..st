action
fillRectangle: aRect on: aCanvas
	aCanvas
		fillRectangle: aRect
		color: self asColor;
		
		line: (aRect corner x - 2)@(aRect origin y)
		to: aRect origin 
		width: 1 
		color: self lightHighlightColor;
		line: aRect origin
		to: (aRect origin x)@(aRect corner y - 1)
		width: 1
		color: self lightHighlightColor;
		
		line: (aRect origin x + 1)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect corner y - 1)
		width: 1
		color: self darkHighlightColor;
		line: (aRect corner x - 1)@(aRect corner y - 1)
		to: (aRect corner x - 1)@(aRect origin y)
		width: 1
		color: self darkHighlightColor.
	
	arrowForm ifNotNil: [ 
		self drawArrowInRect: aRect on: aCanvas ].
		
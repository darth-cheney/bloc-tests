drawing
frameRectangle: aRect on: aCanvas
	| upperColor lowerColor |
	upperColor := Color white.
	lowerColor := (Color r: 170 g: 170 b: 170 range: 255).
	
	aCanvas
		line: (aRect origin x)@(aRect corner y - 2)
		to: aRect origin
		width: 1
		color: upperColor;
		
		line: aRect origin
		to: (aRect corner x - 1)@(aRect origin y)
		width: 1
		color: upperColor;
		
		line: (aRect corner x - 1)@(aRect origin y + 1)
		to: (aRect corner x - 1)@(aRect corner y - 1)
		width: 1
		color: lowerColor;
		
		line: (aRect corner x - 1)@(aRect corner y - 1)
		to: (aRect origin x + 1)@(aRect corner y - 1)
		width: 1
		color: lowerColor.